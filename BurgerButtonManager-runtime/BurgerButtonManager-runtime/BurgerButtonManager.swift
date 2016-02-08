//
//  BurgerButtonManager.swift
//  BurgerButtonManager-runtime
//
//  Created by TangJR on 2/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

import UIKit

protocol BurgerButtonManager {
    func needBurgerButton();
}

extension BurgerButtonManager where Self: UIViewController {
    func needBurgerButton() {
        let burgerButton = UIBarButtonItem(title: "菜单", style: .Plain) {
            print("菜单显示")
        }
        self.navigationItem.leftBarButtonItem = burgerButton
    }
}