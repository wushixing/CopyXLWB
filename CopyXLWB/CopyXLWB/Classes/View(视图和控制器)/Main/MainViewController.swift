//
//  MainViewController.swift
//  CopyXLWB
//
//  Created by WuShixing on 2019/5/19.
//  Copyright © 2019 WuShixing. All rights reserved.
//

import UIKit

// MARK: - 主控制器
class MainViewController: UITabBarController {
    
    // MARK: - 懒加载属性
    private lazy var composeBtn: UIButton = {
        let btn = UIButton()
        let tabBarW = kScreenW / 5 - 1
        btn.frame = tabBar.bounds.insetBy(dx: tabBarW * 2, dy: 0)
        btn.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: .normal)
        btn.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: .normal)
        return btn
    }()
    
    // MARK: - 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()

        addChild(HomeViewController(), imageName: "tabbar_home", title: "首页")
        addChild(MessageViewController(), imageName: "tabbar_message_center", title: "消息")
        addChild(UIViewController())
        addChild(DiscoverViewController(), imageName: "tabbar_discover", title: "发现")
        addChild(ProfileViewController(), imageName: "tabbar_profile", title: "我")
        
        UITabBar.appearance().tintColor = UIColor.orange
        
        tabBar.addSubview(composeBtn)
        composeBtn.addTarget(self, action: #selector(composeBtnClick), for: .touchUpInside)
    }
    
    // 撰写按钮
    @objc private func composeBtnClick() {
        print("You click to me!")
    }
    
    /// 添加子视图方法
    ///
    /// - Parameters:
    ///   - childController: 子视图控制器
    ///   - imageName: 子视图图标
    ///   - title: 子视图标题
    func addChild(_ childController: UIViewController, imageName: String = "", title: String = "") {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_selected")
        childController.tabBarItem.title = title
        childController.title = title
        
        let nav = NavigationViewController(rootViewController: childController)
        addChild(nav)
    }
}
