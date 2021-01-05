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
    
    private func getActionsFromAssets() -> Actions? {
        guard let asset = NSDataAsset(name: "result"),
              let actions = try? JSONDecoder().decode(Actions.self, from: asset.data)
        else { return nil }
        return actions
    }
    
    public func getActionsFromGithub() -> Actions? {
        guard let url = URL(string: "https://raw.githubusercontent.com/avito-tech/internship/main/result.json"),
              let data = try? Data(contentsOf: url),
              let actions = try? JSONDecoder().decode(Actions.self, from: data)
        else { return getActionsFromAssets() }
        
        return actions
    }
}
