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
    
    @IBOutlet weak var container: UIView!
    
    var viewNames:  [String] = ["SimpleVC1", "GalleryVC", "SimpleVC3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        add(storyboardName: viewNames[1])
    }
    
    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
        add(storyboardName: viewNames[sender.selectedSegmentIndex])
    }
    
    func add(storyboardName: String) {
        container.subviews.forEach {sub in
            sub.removeFromSuperview()
        }
        let controller = storyboard!.instantiateViewController(withIdentifier: storyboardName)
        addChild(controller)
        controller.view.frame = container.frame
        container.addSubview(controller.view)
        controller.didMove(toParent: self)
    }
    
}

