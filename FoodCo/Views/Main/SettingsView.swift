//
//  SettingsView.swift
//  FoodCo
//
//  Created by Hilal Karataş on 4.03.2023.
//

//import SwiftUI

//struct SettingsView: View {
  //  var body: some View {
    //    NavigationView {
      //      Text("Connect Wallet")
             //   .navigationTitle("Settings")
//        }
 //   }
//}

//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
 //       SettingsView()
 //   }
//}

import SwiftUI
import Solana
import PhantomConnect

struct SettingsView: View {
    
    @StateObject var viewModel = PhantomConnectViewModel()
    
    @State var walletConnected = false
    @State var walletPublicKey: PublicKey?
    @State var phantomEncryptionKey: PublicKey?
    @State var session: String?
    @State var transactionSignature: String?
    
    var body: some View {
        
        content
            .buttonStyle(.borderedProminent)
            .padding()
            .onAppear {
                
                PhantomConnect.configure(
                    appUrl: "https://example.com",
                    cluster: "devnet",
                    redirectUrl: "example://"
                )
                
            }
        
    }
    
    @ViewBuilder
    var content: some View {
        
        if walletConnected {
            connectedContent
        } else {
            disconnectedContent
        }
        
    }
    
    var disconnectedContent: some View {
        
        Button {
            try? viewModel.connectWallet()
        } label: {
            Text("Connect with Phantom")
        }
        .onWalletConnect(viewModel: viewModel) { publicKey, phantomEncryptionPublicKey, session, error in
            
            self.walletPublicKey = publicKey
            self.phantomEncryptionKey = phantomEncryptionPublicKey
            self.session = session
            
            walletConnected.toggle()
            
        }
        
    }
    
    var connectedContent: some View {
        
        VStack(spacing: 24) {
            
            VStack {
                Text("Wallet Public Key:")
                Text(walletPublicKey?.base58EncodedString ?? "--")
            }
            
            VStack {
                Text("Transaction Signature:")
                Text(transactionSignature ?? "--")
            }
            
            Button {
                
                createTransaction { serializedTransaction in
                    
                    try? viewModel.sendAndSignTransaction(
                        serializedTransaction: serializedTransaction,
                        dappEncryptionKey: viewModel.linkingKeypair?.publicKey,
                        phantomEncryptionKey: phantomEncryptionKey,
                        session: session,
                        dappSecretKey: viewModel.linkingKeypair?.secretKey
                    )
                    
                }
                
            } label: {
                
                Text("Send Transaction")
                
            }
            .onWalletTransaction(
                phantomEncryptionPublicKey: phantomEncryptionKey,
                dappEncryptionSecretKey: viewModel.linkingKeypair?.secretKey
            ) { signature, _ in
                
                transactionSignature = signature
                
            }
            
            Button {
                
                try? viewModel.disconnectWallet(
                    dappEncryptionKey: viewModel.linkingKeypair?.publicKey,
                    phantomEncryptionKey: phantomEncryptionKey,
                    session: session,
                    dappSecretKey: viewModel.linkingKeypair?.secretKey
                )
                
            } label: {
                
                Text("Disconnect from Phantom")
                
            }
            .onWalletDisconnect { error in
                
                walletConnected.toggle()
                
            }
            
        }
        
    }
    
    func createTransaction(completion: @escaping ((_ serializedTransaction: String) -> Void)) {
        
        let solana = Solana(router: NetworkingRouter(endpoint: RPCEndpoint.devnetSolana))
        
        solana.api.getRecentBlockhash { result in
            
            let blockhash = try? result.get()
            
            var transaction = Transaction(
                feePayer: walletPublicKey!,
                instructions: [
                    SystemProgram.transferInstruction(
                        from: walletPublicKey!,
                        to: walletPublicKey!,
                        lamports: 100
                    )
                ],
                recentBlockhash: blockhash!
            )
            
            let serializedTransaction = try? transaction.serialize().get()
            
            DispatchQueue.main.async {
                completion(Base58.encode(serializedTransaction!.bytes))
            }
            
        }
        
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
