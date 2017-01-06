//
//  LJBViewController.swift
//  LJBDouyu
//
//  Created by apple on 17/1/6.
//  Copyright © 2017年 bowenCompany. All rights reserved.
//

import UIKit

class LJBViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置tabar的颜色
        UITabBar.appearance().tintColor = UIColor.orange
        //通过加载storyboard添加子控制器
        self.addChildVC(storyboardName: "Home")
        self.addChildVC(storyboardName: "Live")
        self.addChildVC(storyboardName: "Follow")
        self.addChildVC(storyboardName: "Profile")
    }
    func addChildVC(storyboardName : String) {
        let childVC = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()
        self.addChildViewController(childVC!)
    }
}
