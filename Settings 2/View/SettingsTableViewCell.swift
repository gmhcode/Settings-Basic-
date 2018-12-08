//
//  SettingsTableViewCell.swift
//  Settings 2
//
//  Created by Greg Hughes on 12/8/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

import UIKit

protocol SettingsTableViewCellDelegate: class {
    func buttonPressed(_ cell: SettingsTableViewCell)
}


class SettingsTableViewCell: UITableViewCell {
    
    var setting : Setting? {
        didSet {
            updateViews()
        }
    }
    
    
   
    weak var delegate : SettingsTableViewCellDelegate?
    
    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    
    func updateViews() {
        
        
        guard let setting = setting else {return}
        settingSwitch.isOn = setting.isActive
        settingImage.image = setting.image
        settingLabel.text = setting.name
        
        if settingSwitch.isOn == true {
            self.backgroundColor = #colorLiteral(red: 1, green: 0.8965639152, blue: 0.09961696235, alpha: 1)
        } else {
            self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    @IBAction func settingCellButtonTapped(_ sender: Any) {
        updateViews()
        delegate?.buttonPressed(self)
        
    }
    
    
    
    
}
