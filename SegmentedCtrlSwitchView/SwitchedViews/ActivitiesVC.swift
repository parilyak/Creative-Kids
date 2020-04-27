//
//  ActivitiesVC.swift
//  SegmentedCtrlSwitchView
//
//  Created by Lilya on 27.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class ActivitiesVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
}
