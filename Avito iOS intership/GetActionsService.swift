//
//  GetActionsService.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 04.01.2021.
//

import Foundation
import UIKit

class GetActionsService {
    
    private init() {}
    static let shared = GetActionsService()
    
    public func getActionsFromAssets() -> Actions? {
        guard let asset = NSDataAsset(name: "result"),
              let actions = try? JSONDecoder().decode(Actions.self, from: asset.data)
        else { return nil }
        return actions
    }
    
    // Write function to take json from internet
    public func getActionsFromGithub() -> Actions? {
        guard let asset = NSDataAsset(name: "result"),
              let actions = try? JSONDecoder().decode(Actions.self, from: asset.data)
        else { return nil }
        return actions
    }
}
