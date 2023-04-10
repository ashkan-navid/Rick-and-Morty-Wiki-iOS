//
//  RMW_Service.swift
//  Rick and Morty Wiki
//
//  Created by Ashkan Navid on 10.04.23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMW_Service {
    /// Shared singleton instance
    static let shared = RMW_Service()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    ///  - Parameters:
    ///     - request: Request instance
    ///     - completion: Callback with data or error
    public func execute(_ request: RMW_Request, completion: @escaping () -> Void) {
        
    }
}
