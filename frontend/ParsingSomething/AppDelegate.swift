//
//  AppDelegate.swift
//  ParsingSomething
//
//  Created by Stanislav Cherkasov on 5/25/19.
//  Copyright © 2019 Stanislav Cherkasov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    UINavigationBar.appearance().barTintColor = UIColor.clear
    UINavigationBar.appearance().tintColor = UIColor.clear
    
    return true
  }
}

