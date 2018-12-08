//
//  Setting.swift
//  Settings 2
//
//  Created by Greg Hughes on 12/8/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

import Foundation
import UIKit

class Setting {
    
    var name: String
    var image: UIImage
    var isActive: Bool
    
    init(name: String, image: UIImage, isActive: Bool) {
        
        self.name = name
        self.image = image
        self.isActive = isActive
    }
}
