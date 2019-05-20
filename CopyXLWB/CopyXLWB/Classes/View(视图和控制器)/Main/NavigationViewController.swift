//
//  NavigationViewController.swift
//  CopyXLWB
//
//  Created by WuShixing on 2019/5/19.
//  Copyright © 2019 WuShixing. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    /// 重新push方法
    ///
    /// - Parameters:
    ///   - viewController: 控制器
    ///   - animated: 动画效果
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        // 判断是否是根控制器
        if children.count > 0 {
            // 隐藏底部的tabbar
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: true)
    }

}
