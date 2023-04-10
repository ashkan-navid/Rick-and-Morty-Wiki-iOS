//
//  RMW_CharacterViewController.swift
//  Rick and Morty Wiki
//
//  Created by Ashkan Navid on 10.04.23.
//

import UIKit

/// Controller to show and search for characters
final class RMW_CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMW_Request(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ])
        
        print(request.url)
        
        RMW_Service.shared.execute(request, expecting: RMW_Character.self) { result in
            
        }
    }
}
