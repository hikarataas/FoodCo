//
//  UrlUtils.swift
//  FoodCo
//
//  Created by Hilal Karataş on 12.03.2023.
//

import Foundation

class UrlUtils {
    
    // ============================================================
    // === Internal Static API ====================================
    // ============================================================
    
    // MARK: - Internal Static API

    // MARK: Internal Static Methods
    
    /// Helper method for formatting urls to be opened in phantom app
    /// - Parameters:
    ///   - path: base path of url
    ///   - parameters: parameters to attach to the url query string
    /// - Returns: URL
    static func format(_ path: String, parameters: [String: String]?) -> URL? {
        
        var queryItems: [URLQueryItem] = []
        
        parameters?.forEach({ (parameter) in
            queryItems.append(URLQueryItem(name: parameter.key, value: parameter.value))
        })
        
        var urlComponents = URLComponents(string: path)!
        if parameters != nil {
            urlComponents.queryItems = queryItems
        }
        
        return urlComponents.url
        
    }
    
}
