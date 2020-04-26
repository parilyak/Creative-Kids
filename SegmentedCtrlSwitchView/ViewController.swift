//
//  ViewController.swift
//  SegmentedCtrlSwitchView
//
//  Created by Lilya on 26.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewContainer: UIView!
   
    var views:  [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        views = [UIView]()
        views.append(SimpleVC1().view)
        views.append(SimpleVC2().view)
        views.append(SimpleVC3().view)
        
        for v in views {
            viewContainer.addSubview(v)
        }
        
        viewContainer.bringSubviewToFront(views[0])
    }

    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        self.viewContainer.bringSubviewToFront(views[sender.selectedSegmentIndex])
    }
    
}

