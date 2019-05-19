//
//  AppDelegate.swift
//  CopyXLWB
//
//  Created by WuShixing on 2019/5/19.
//  Copyright © 2019 WuShixing. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        sleep(2)
        
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

