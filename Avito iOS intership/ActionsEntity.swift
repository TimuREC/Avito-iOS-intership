//
//  ActionsEntity.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 04.01.2021.
//

// To parse the JSON, add this file to your project and do:
//   let actions = try? newJSONDecoder().decode(Actions.self, from: jsonData)

import Foundation

// MARK: - Actions
struct Actions: Codable {
    let status: String
    let result: Result
}

// MARK: - Result
struct Result: Codable {
    let title, actionTitle, selectedActionTitle: String
    let list: [Action]
}

// MARK: - List
struct Action: Codable {
    let id, title: String
    let listDescription: String?
    let icon: Icon
    var image: Data {
        get {
            guard let url = URL(string: icon.the52X52),
                  let imageData = try? Data(contentsOf: url)
            else { return Data() }
            
            return imageData
        }
    }
    let price: String
    var isSelected: Bool

    enum CodingKeys: String, CodingKey {
        case id, title
        case listDescription = "description"
        case icon, price, isSelected
    }
}

// MARK: - Icon
struct Icon: Codable {
    let the52X52: String

    enum CodingKeys: String, CodingKey {
        case the52X52 = "52x52"
    }
}


