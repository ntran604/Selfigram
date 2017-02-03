//
//  AppDelegate.swift
//  twitter
//
//  Created by Macbook on 2017-01-12.
//  Copyright © 2017 Macbook. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Initialize Parse.
        // Replace XXXX with the App ID and Server URL that you recieved
        let configuration = ParseClientConfiguration { clientConfiguration in
            clientConfiguration.applicationId = "37a97c43-bf2b-4755-9337-0006485d7f1d"
            clientConfiguration.server = "https://ios-van-pt-parse-server-5.herokuapp.com/parse"
        }
        Parse.initialize(with: configuration)
        
        
        let testObject = PFObject(className: "TestObject")
        testObject["name"] = "Nancy"
        testObject.saveInBackground(block: { (success: Bool, error: Error?) -> Void in
            print("Object has been saved.")
        })


        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

