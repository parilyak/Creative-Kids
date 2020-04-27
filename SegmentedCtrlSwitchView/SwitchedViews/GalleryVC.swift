//
//  GalleryVC.swift
//  SegmentedCtrlSwitchView
//
//  Created by Lilya on 27.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class GalleryVC: UIViewController {
    
    @IBOutlet weak var iCarouselView: iCarousel!
    
    var imgArr = [ UIImage(named: "coding"),
                   UIImage(named: "sports"),
                   UIImage(named: "ballet"),
                   UIImage(named: "litclub"),
                   UIImage(named: "arts")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iCarouselView.type = .timeMachine
        iCarouselView.contentMode = .scaleAspectFill
        iCarouselView.isPagingEnabled = true
    }
    
    
}

extension GalleryVC: iCarouselDelegate, iCarouselDataSource{
    func numberOfItems(in carousel: iCarousel) -> Int {
        return imgArr.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        var imageView: UIImageView!
        if view == nil {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 40, height: 250))
            imageView.contentMode = .scaleAspectFit
        } else {
            imageView = view as? UIImageView
        }
        
        imageView.image = imgArr[index]
        return imageView
    }
}

