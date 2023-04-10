//
//  RMW_Endpoint.swift
//  Rick and Morty Wiki
//
//  Created by Ashkan Navid on 10.04.23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMW_Endpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
