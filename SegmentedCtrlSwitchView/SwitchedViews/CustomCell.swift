//
//  CustomCell.swift
//  SegmentedCtrlSwitchView
//
//  Created by Lilya on 27.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var activity: UILabel!
    @IBOutlet weak var availableDay: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit(activity: String, availableDay: String, time: String) {
        self.activity.text = activity
        self.availableDay.text = availableDay
        self.time.text = time
        
        self.activity.textColor = .black
        self.contentView.backgroundColor = .white
    }
    
}
