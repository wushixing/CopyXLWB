//
//  HomeViewController.swift
//  CopyXLWB
//
//  Created by WuShixing on 2019/5/19.
//  Copyright © 2019 WuShixing. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    /// 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /// 显示好友点击事件
    @objc private func leftBtn() {
        print("点击我了")
        
        let vc = DomeViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 设置UI界面
extension HomeViewController {
    
    /// 重写父类的方法
    override func setupUI() {
        super.setupUI()
        
        // 设置导航栏按钮
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "好友", style: .plain, target: self, action: #selector(leftBtn))
    }
}
