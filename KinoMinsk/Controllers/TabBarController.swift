//
//  TabBarController.swift
//  KinoMinsk
//
//  Created by Artur on 19.05.23.
//

import UIKit

class TabBarController: UITabBarController {
    
    enum tabBarMenu: Int {
        case home
        case map
        case tickets
        case profile
    }

    override func viewDidLoad() {

       super.viewDidLoad()

       guard let tabBarMenuItem = tabBarMenu(rawValue: 0) else { return }
       setTintColor(forMenuItem: tabBarMenuItem)
     }

     override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {

       guard
        let menuItemSelected = tabBar.items?.firstIndex(of: item),
         let tabBarMenuItem = tabBarMenu(rawValue: menuItemSelected)
         else { return }

       setTintColor(forMenuItem: tabBarMenuItem)
     }

     // MARK: Private

     private func setTintColor(forMenuItem tabBarMenuItem: tabBarMenu) {
         switch tabBarMenuItem {
         case .home:
             viewControllers?[tabBarMenuItem.rawValue].tabBarController?.tabBar.tintColor = UIColor(red: 115, green: 206, blue: 112, alpha: 1)
         case .map:
             viewControllers?[tabBarMenuItem.rawValue].tabBarController?.tabBar.tintColor = UIColor(red: 255, green: 183, blue: 0, alpha: 1)
         case .tickets:
             viewControllers?[tabBarMenuItem.rawValue].tabBarController?.tabBar.tintColor = UIColor(red: 255, green: 88, blue: 42, alpha: 1)
         case .profile: viewControllers?[tabBarMenuItem.rawValue].tabBarController?.tabBar.tintColor = UIColor(red: 106, green: 215, blue: 224, alpha: 1)
         }
     
     }
}
