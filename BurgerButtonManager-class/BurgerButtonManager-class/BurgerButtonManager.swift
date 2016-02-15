//
//  BurgerButtonManager.swift
//  BurgerButtonManager-class
//
//  Created by TangJR on 2/8/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

import UIKit

typealias STBarButtonItemBlock = ()->()

class BlockBarButtonItem: UIBarButtonItem {
    var block: STBarButtonItemBlock?
    convenience init(title: String, style: UIBarButtonItemStyle, block: STBarButtonItemBlock) {
        self.init(title: title, style: style, target: nil, action: "buttonTapped")
        self.target = self
        self.block = block
    }
    
    convenience init(image: UIImage, style: UIBarButtonItemStyle, block: STBarButtonItemBlock) {
        self.init(image: image, style: style, target: nil, action: "buttonTapped")
        self.target = self
        self.block = block
    }
    
    func buttonTapped() {
        guard let block = block else {
            return
        }
        block()
    }
}

protocol BurgerButtonManager {
    func needBurgerButton()
}

extension BurgerButtonManager where Self: UIViewController {
    func needBurgerButton() {
        let item = BlockBarButtonItem(title: "菜单", style: .Plain) {
            print("123");
        }
        self.navigationItem.leftBarButtonItem = item
    }
}