//
//  TabBarControllerCustom.swift
//  TableView
//
//  Created by isain on 30/01/2019.
//  Copyright © 2019 Stucom. All rights reserved.
//

import UIKit

class TabBarControllerCustom: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.blue], for: .normal)
        
        tabBarItem = self.tabBar.items?[0]
        tabBarItem.image = UIImage(named:"category")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named:"like")?.withRenderingMode(.alwaysOriginal)
        
        tabBarItem = self.tabBar.items?[1]
        tabBarItem.image = UIImage(named:"users")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.image = UIImage(named: "user")?.withRenderingMode(.alwaysOriginal)
        
        for index in 0...tabBar.items!.count - 1{
            tabBarItem = self.tabBar.items?[index]
            tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
        
        self.selectedIndex = 1
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
