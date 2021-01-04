//
//  ActionsRouter.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//

import Foundation

class ActionsRouter: ActionsRouterProtocol {
    
    weak var viewController: ActionsViewProtocol!
    
    required init(viewController: ActionsViewProtocol) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        print("Close button clicked")
    }
    
    func nextViewController() {
        print("Action button clicked, open next screen")
        // Make UIAlert
    }
    
}
