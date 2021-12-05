//
//  mTbbarVc.swift
//  WHTabbar_Example
//
//  Created by wajeeh hassan on 02/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import WHTabbar

class mTbbarVc: WHTabbarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        centerButtonSize  = 60.0
        centerButtonBackroundColor =  .clear
        centerButtonBorderColor  =  #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        centerButtonBorderWidth = 4
        centerButtonImageSize = 30
        centerButtonImage = UIImage(named: "ic_wicket")
        
        
        
        // vPosition +ev value will move button Up
        // vPosition -ev value will move button Down
        setupCenetrButton(vPosition: 0) {
            print("center button clicked")
            
            // you can navigate to some view controler from here
            
            // or you can enable the babbar selected item jsut like
           // self.tabBarController?.selectedIndex = 1
        }
        
        
    }
}
