//
//  UIBarButtonItem+STBlock.swift
//  BurgerButtonManager-runtime
//
//  Created by TangJR on 2/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

import UIKit

typealias STBarButtonItemBlock = () -> ()

class STBarButtonItemWrapper {
    var block: STBarButtonItemBlock?
    init(block: STBarButtonItemBlock) {
        self.block = block
    }
}

struct STConst {
    static var STBarButtonItemWrapperKey = "STBarButtonItemWrapperKey"
}

extension UIBarButtonItem {
    convenience init(title: String?, style: UIBarButtonItemStyle, block: STBarButtonItemBlock) {
        self.init()
        self.title = title
        self.style = style
        target = self
        action = "buttonTapped"
        let wrapper = STBarButtonItemWrapper(block: block)
        objc_setAssociatedObject(self, &STConst.STBarButtonItemWrapperKey, wrapper, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    func buttonTapped() {
        if let wrapper = objc_getAssociatedObject(self, &STConst.STBarButtonItemWrapperKey) as? STBarButtonItemWrapper {
            if let block = wrapper.block {
                block()
            }
        }
    }
}