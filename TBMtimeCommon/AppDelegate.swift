//
//  AppDelegate.swift
//  TBMtimeCommon
//
//  Created by 田彬彬 on 2020/12/22.
//

import UIKit
import CoreData

import TBMtimeBaseControll

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        /// 设置tabbbar
        conggfigTabbar()

        return true
    }
    
    lazy var persistentContainer: NSPersistentContainer = {

        let container = NSPersistentContainer(name: "TBMtimeCommon")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {

                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {

                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

extension AppDelegate {
    
    /// 设置bundle
    func congfigBundle() {
        
    }
    
    /// 设置tabbbar
    func conggfigTabbar() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        let vc = ViewController()
        let rootVC = UINavigationController(rootViewController: vc)
        rootVC.title = "公共组件"
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        
    }
}

