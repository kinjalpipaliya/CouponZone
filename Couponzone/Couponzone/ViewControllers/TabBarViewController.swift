//
//  TabBarViewController.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 20/08/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.layer.cornerRadius = 15
        self.tabBar.layer.masksToBounds = true
    }
}
