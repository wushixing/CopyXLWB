//
//  BaseViewController.swift
//  CopyXLWB
//
//  Created by WuShixing on 2019/5/19.
//  Copyright © 2019 WuShixing. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    /// 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

// MARK: - 设置界面
extension BaseViewController {
    @objc func setupUI() {
        view.backgroundColor = UIColor().randomColor
    }
}
