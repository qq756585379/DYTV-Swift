//
//  DouYuTBC.swift
//  DouYuTV
//
//  Created by 杨俊 on 2017/8/29.
//  Copyright © 2017年 Lenovo-Apple. All rights reserved.
//

import UIKit

class DouYuTBC: BaseTBC {

    override func viewDidLoad() {
        super.viewDidLoad()
		addChildViewControllers()
        
        let backView = UIView(frame: CGRect(x: 0, y: 0, width: kScreenW, height: 49))
        backView.backgroundColor = UIColor.white
        tabBar.insertSubview(backView, at: 0)
        tabBar.isOpaque = true
    }

    fileprivate func addChildViewControllers() {
        setupOneChildViewController(title: "首页", image: "btn_home_normal", selectedImage: "btn_home_selected", controller: HomeVC())
        setupOneChildViewController(title: "直播", image: "menu_youxi_nor", selectedImage: "menu_youxi_sel", controller: LiveVC())
        setupOneChildViewController(title: "关注", image: "menu_yule_nor", selectedImage: "menu_yule_sel", controller: FollowVC())
        setupOneChildViewController(title: "我的", image: "menu_goddess_nor", selectedImage: "menu_goddess_sel", controller: ProfileVC())
    }
    
    fileprivate func setupOneChildViewController(title: String, image: String, selectedImage: String, controller: UIViewController) {
        controller.tabBarItem.title = title
        controller.title = title
        controller.view.backgroundColor = UIColor.white
        controller.tabBarItem.image = UIImage(named: image)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImage)
        let naviController = BaseNC.init(rootViewController: controller)
        addChildViewController(naviController)
    }
    
}
