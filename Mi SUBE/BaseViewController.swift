//
//  BaseViewController.swift
//  Mi SUBE
//
//  Created by Mariano Molina on 8/12/15.
//  Copyright © 2015 Hernan Matias Coppola. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set hamburger icon
        let icon = UIBarButtonItem(image: UIImage(named: "menu"), style: .Plain, target: navigationController, action: "showMenu")
        icon.imageInsets = UIEdgeInsetsMake(-10, 0, 0, 0)
        icon.tintColor = UIColor.blackColor()
        navigationItem.leftBarButtonItem = icon
    }
}
