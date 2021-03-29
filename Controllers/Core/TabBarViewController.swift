//
//  TabBarViewController.swift
//  Reps
//
//  Created by Scott Colas on 3/28/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //define vcs
        let home = HomeViewController()
        
        
        let nav1 = UINavigationController(rootViewController: home)
        
        
        //define tab items
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)

        
        // set controllers
        self.setViewControllers([nav1], animated: false)
        
    }
    

    

}
