//
//  MainTabBerController.swift
//  Clock_Clone
//
//  Created by Y3SUNG on 2022/08/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Main TabBar = viewDidLoad called")
        
        let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "first", bgColor: .white))
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "second", bgColor: .white))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "third", bgColor: .white))
        let forthNC = UINavigationController.init(rootViewController: MyViewController(title: "forth", bgColor: .white))
        
        self.viewControllers = [firstNC, secondNC, thirdNC, forthNC]
        
        let firstTabBarItem = UITabBarItem(title: "세계 시계", image: UIImage(systemName: "airplayaudio"), tag: 0)
        let secondTabBarItem = UITabBarItem(title: "알람", image: UIImage(systemName: "gear"), tag: 1)
        let thirdTabBarItem = UITabBarItem(title: "스톱워치", image: UIImage(systemName: "airplayaudio"), tag: 2)
        let forthTabBarItem = UITabBarItem(title: "타이머", image: UIImage(systemName: "vedio.fill"), tag: 3)
        
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        forthNC.tabBarItem = forthTabBarItem
    }
    
}
