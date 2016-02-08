//
//  ViewController.swift
//  BurgerButtonManager-runtime
//
//  Created by TangJR on 2/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BurgerButtonManager {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        needBurgerButton()
    }
}