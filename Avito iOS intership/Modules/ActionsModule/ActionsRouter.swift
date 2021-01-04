//
//  ActionsRouter.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//

import Foundation
import UIKit

class ActionsRouter: ActionsRouterProtocol {
    
    weak var viewController: ActionsViewProtocol!
    
    required init(viewController: ActionsViewProtocol) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        print("Close button clicked")
    }
    
    func nextViewController() {
        print("No action was selected")
    }
    
    func applyAction(_ action: Action) {
        viewController.showAction(action)
    }
    
}
