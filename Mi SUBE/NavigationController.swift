//
//  NavigationController.swift
//  Mi SUBE
//
//  Created by Mariano Molina on 8/12/15.
//  Copyright © 2015 Hernan Matias Coppola. All rights reserved.
//

import UIKit
import MediumMenu

class NavigationController: UINavigationController {

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var menu: MediumMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        let storyboard = UIStoryboard(name: "MainV2", bundle: nil)
        let mapaViewController = storyboard.instantiateViewControllerWithIdentifier("Mapa") as! MapViewController
        setViewControllers([mapaViewController], animated: false)
        
        let item1 = MediumMenuItem(title: "Mapa") {
            let mapaViewController = storyboard.instantiateViewControllerWithIdentifier("Mapa") as! MapViewController
            self.setViewControllers([mapaViewController], animated: false)
        }
        
        let item2 = MediumMenuItem(title: "About") {
            let aboutViewController = storyboard.instantiateViewControllerWithIdentifier("About") as! AboutViewController
            self.setViewControllers([aboutViewController], animated: false)
        }
        
        menu = MediumMenu(items: [item1, item2], forViewController: self)
    }
    
    func showMenu() {
        menu?.show()
    }
}

extension UINavigationBar {
    public override func sizeThatFits(size: CGSize) -> CGSize {
        return CGSizeMake(UIScreen.mainScreen().bounds.size.width, 60)
    }
}
