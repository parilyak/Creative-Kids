//
//  ContactsVC.swift
//  SegmentedCtrlSwitchView
//
//  Created by Lilya on 27.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class ContactsVC: UIViewController {

    
    
    @IBOutlet weak var address: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let addressTap = UITapGestureRecognizer(target: self, action: #selector(self.addressTapped(_:)))
        self.address.isUserInteractionEnabled = true
        self.address.addGestureRecognizer(addressTap)
    }
    

   @objc func addressTapped(_ sender: UITapGestureRecognizer) {
    UIApplication.shared.open(URL(string: "http://maps.apple.com/?address=Lvivska+Square,+14+Kyiv,+Ukraine")!)
   }

}
