//
//  RMW_Request.swift
//  Rick and Morty Wiki
//
//  Created by Ashkan Navid on 10.04.23.
//

import Foundation

/// Object that represents a single API call
final class RMW_Request {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMW_Endpoint
    
    /// Path components for API if any
    private let pathComponents: Set<String>
    
    /// Query arguments for api if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API URL
    public var url: URL? {
        return URL(string: urlString)        
    }
    
    /// Desired HTTP Method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    /// - endpoint: Target endpoint
    /// - pathComponents: Collection of path components
    /// - queryComponents: Collection of query components
    public init(endpoint: RMW_Endpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
