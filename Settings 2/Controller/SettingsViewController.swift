//
//  SettingsViewController.swift
//  Settings 2
//
//  Created by Greg Hughes on 12/8/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - TableView
extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingsTableViewCell else {fatalError()}
        
        let setting = SettingController.shared.settings[indexPath.row]
        
        cell.delegate = self
        
        cell.setting = setting
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
}

extension SettingsViewController: SettingsTableViewCellDelegate {
    func buttonPressed(_ cell: SettingsTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        SettingController.shared.settings[indexPath.row].isActive.toggle()
    }
}



