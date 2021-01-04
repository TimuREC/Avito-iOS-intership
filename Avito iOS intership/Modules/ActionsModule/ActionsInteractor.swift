//
//  ActionsInteractor.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//

import Foundation

class ActionsInteractor: ActionsInteractorProtocol {
    
    weak var presenter: ActionsPresenterProtocol!
    
    required init(presenter: ActionsPresenterProtocol) {
        self.presenter = presenter
    }
    
    func getActions() -> Actions? {
        return GetActionsService.shared.getActionsFromAssets()
    }

}
