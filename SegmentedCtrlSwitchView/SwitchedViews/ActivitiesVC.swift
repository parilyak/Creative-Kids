//
//  ActivitiesVC.swift
//  SegmentedCtrlSwitchView
//
//  Created by Lilya on 27.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class ActivitiesVC: UITableViewController {
    
    @IBOutlet weak var activitiesTableView: UITableView!
    
    var p: Int!
    
    var data = [
        ["Mon-Fri 4pm-6pm 💻Coding",        "Sat-Sun 11am-6pm 🎥Filmmaking",      "Mon-Fri 4pm-6pm 🔬Science",    "Wed,Th 3pm-5pm 🎹Arts",
        "Tue-Fri 4pm-6pm 💃Dancing",     "Mon-Sun 6pm-7pm 🏓Sports",    "Sat 1pm-2pm 📚LitClub",    "Sat 1pm-2pm 📝Writing", "Sun 10am-5pm ⛺️Scouts", "Sat-Sun 10am-1pm 🎭Acting", "Wed 5pm-6pm 🍱Cooking"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "CustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "customCell")
        
        tableView.backgroundColor = .white
        
        p = 0
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let str = data[p][indexPath.row].components(separatedBy: " ")
        cell.customInit(activity: str[2], availableDay: str[0], time: str[1])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[p].count
    }
    
    
}
