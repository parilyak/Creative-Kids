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
    
    @IBOutlet weak var phoneNumber: UITextView!
    
    @IBOutlet weak var website: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let addressTap = UITapGestureRecognizer(target: self, action: #selector(self.addressTapped(_:)))
        self.address.isUserInteractionEnabled = true
        self.address.addGestureRecognizer(addressTap)
        
        let phoneNumberTap = UITapGestureRecognizer(target: self, action: #selector(self.phoneNumberTapped(_:)))
        self.phoneNumber.isUserInteractionEnabled = true
        self.phoneNumber.addGestureRecognizer(phoneNumberTap)
        
        let websiteTap = UITapGestureRecognizer(target: self, action: #selector(self.websiteTapped(_:)))
               self.website.isUserInteractionEnabled = true
               self.website.addGestureRecognizer(websiteTap)
    }
    

   @objc func addressTapped(_ sender: UITapGestureRecognizer) {
    UIApplication.shared.open(URL(string: "http://maps.apple.com/?address=Lvivska+Square,+14+Kyiv,+Ukraine")!)
   }

    @objc func websiteTapped(_ sender: UITapGestureRecognizer) {
       UIApplication.shared.open(URL(string: "https://creativekids.com.ua")!)
      }
    
    @objc func phoneNumberTapped(_ sender: UITapGestureRecognizer) {
          UIApplication.shared.open(URL(string: "tel://+380960000000")!)
         }
}
