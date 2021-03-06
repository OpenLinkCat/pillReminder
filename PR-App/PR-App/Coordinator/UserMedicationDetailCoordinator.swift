//
//  UserMedicationDetailCoordinator.swift
//  PR-App
//
//  Created by Jakub Homik on 03/07/2020.
//  Copyright © 2020 Jakub Homik. All rights reserved.
//

import UIKit

final class UserMedicationDetailCoordinator: Coordinator {

    weak var parentCoordinator: MainCoordinator?
    var childCoordinator = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = UserMedicationDetailVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func didFinishUserMedicationDetail() {
        parentCoordinator?.childDidFinish(self)
    }
}
