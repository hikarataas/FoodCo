//
//  SolanaUtils.swift
//  FoodCo
//
//  Created by Hilal Karataş on 12.03.2023.
//

import Foundation
import Solana
import TweetNacl

extension Data {
    var base58EncodedString: String {
        Base58.encode(bytes)
    }
}

struct SolanaUtils {
    
    // ============================================================
    // === Internal Static API API ================================
    // ============================================================
    
    // MARK: - Internal Static API
    
    // MARK: Internal Static Methods
    
    /// Generates a unique 24 bytes of data
    /// - Returns: data
    static func generateNonce() throws -> Data {

        return try TweetNacl.NaclUtil.secureRandomData(count: 24)
        
    }
    
    /// Generates a keypair whos secret is combined with the public key
    /// - Returns: keypair
    static func generateSigningKeypair() throws -> SigningKeypair {

        let keypair = try TweetNacl.NaclSign.KeyPair.keyPair()
        
        return SigningKeypair(
            publicKey: PublicKey(bytes: keypair.publicKey.bytes) ?? PublicKey(bytes: PublicKey.NULL_PUBLICKEY_BYTES)!,
            secretKey: keypair.secretKey
        )
        
    }
    
    /// Generates a keypair whos secret is separated from the public key
    /// - Returns: keypair
    static func generateBoxedKeypair() throws -> BoxedKeypair {

        let keypair = try TweetNacl.NaclBox.keyPair()
        
        return BoxedKeypair(
            publicKey: PublicKey(bytes: keypair.publicKey.bytes) ?? PublicKey(bytes: PublicKey.NULL_PUBLICKEY_BYTES)!,
            secretKey: keypair.secretKey
        )
        
    }
    
}
