//
//  BoxedKeypair.swift
//  FoodCo
//
//  Created by Hilal Karataş on 12.03.2023.
//

import Foundation
import Solana

public struct BoxedKeypair {
    
    // ============================================================
    // === Public API =============================================
    // ============================================================
    
    // MARK: - Public Static API
    
    // MARK: Public Static Methods
    
    /// 32 byte public key
    public let publicKey: PublicKey
    
    /// 32 byte secret key
    public let secretKey: Data
    
}

