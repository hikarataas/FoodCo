//
//  PhantomConnectError.swift
//  FoodCo
//
//  Created by Hilal Karataş on 12.03.2023.
//

import Foundation

public enum PhantomConnectError: Error {
    
    case invalidEncryptionPublicKey
    case invalidDappSecretKey
    case invalidSerializedTransaction
    case invalidConfiguration
    case invalidUrl
    
}

extension PhantomConnectError: CustomStringConvertible {
    
    public var description: String {
        
        switch self {
            case .invalidEncryptionPublicKey:
                return "The provided encryption key was not valid."
                
            case .invalidDappSecretKey:
                return "The provided dapp secret key is not valid."
                
            case .invalidSerializedTransaction:
                return "The provided dapp secret key is not valid."
                
            case .invalidConfiguration:
                return "Phantom connect was not configured correctly"
                
            case .invalidUrl:
                return "Invalid URL"
                
        }
        
    }
    
}

extension PhantomConnectError: LocalizedError {
    
    public var errorDescription: String? {
        
        switch self {
            case .invalidEncryptionPublicKey:
                return NSLocalizedString(
                    "The provided encryption key was not valid.",
                    comment: "Invalid Encryption Public Key"
                )
                
            case .invalidDappSecretKey:
                return NSLocalizedString(
                    "The provided dapp secret key is not valid.",
                    comment: "Invalid Dapp Secret Key"
                )
                
            case .invalidSerializedTransaction:
                return NSLocalizedString(
                    "The provided dapp secret key is not valid.",
                    comment: "Invalid Serialized Transaction"
                )
                
            case .invalidConfiguration:
                return NSLocalizedString(
                    "Phantom connect was not configured correctly",
                    comment: "Invalid Phantom Connect Configuration"
                )
                
            case .invalidUrl:
                return NSLocalizedString(
                    "Invalid URL",
                    comment: "Invalid URL"
                )
                
        }
    }
}

