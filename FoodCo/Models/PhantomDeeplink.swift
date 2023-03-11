//
//  PhantomDeeplink.swift
//  FoodCo
//
//  Created by Hilal Karataş on 12.03.2023.
//

import Foundation
import Solana

public enum PhantomDeeplink {
    
    case connect(publicKey: PublicKey?, phantomEncryptionPublicKey: PublicKey?, session: String?, error: Error?)
    case disconnect(error: Error?)
    case signTransaction
    case signAllTransactions
    case signAndSendTransaction(signature: String?, error: Error?)
    case signMessage
    case unknown
 
}
