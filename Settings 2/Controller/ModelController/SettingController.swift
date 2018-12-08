//
//  SettingsController.swift
//  Settings 2
//
//  Created by Greg Hughes on 12/8/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

import UIKit

class SettingController {
    
    static var shared = SettingController()
    
    var settings : [Setting] = {
        
        let music = Setting(name: "Music", image: #imageLiteral(resourceName: "music"), isActive: false)
        let apps = Setting(name: "App", image: #imageLiteral(resourceName: "apps"), isActive: false)
        let updates = Setting(name: "Updates", image: #imageLiteral(resourceName: "apps"), isActive: false)
        let books = Setting(name: "Books", image: #imageLiteral(resourceName: "books"), isActive: false)
        
        return [music, apps, updates, books]
    }()
}

