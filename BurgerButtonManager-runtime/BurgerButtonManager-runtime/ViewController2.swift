//
//  ViewController2.swift
//  BurgerButtonManager-runtime
//
//  Created by TangJR on 2/8/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

import UIKit

class ViewController2: UITableViewController, BurgerButtonManager {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        needBurgerButton()
    }
}