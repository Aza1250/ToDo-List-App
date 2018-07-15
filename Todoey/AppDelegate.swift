//
//  AppDelegate.swift
//  Todoey
//
//  Created by Aziz Zaynutdinov on 5/25/18.
//  Copyright © 2018 Aziz Zaynutdinov. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Doesnt serve any purpose other than seeing if there are any errors initializing Realm when the app starts.
        do {
             _ = try Realm()
        } catch {
            print("Error initializing new realm \(error)")
        }
        
        //Prints out the folder directory of the Realm database.
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        return true
    }
}

