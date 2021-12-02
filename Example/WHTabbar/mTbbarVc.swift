//
//  mTbbarVc.swift
//  WHTabbar_Example
//
//  Created by wajeeh hassan on 02/12/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import WHTabbar

@available(iOS 11.0, *)
class mTbbarVc: WHTabbarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
      var safeAreaBottom = 0.0

      centerButtonSize  = 60.0
      centerButtonBackroundColor =  .clear
      centerButtonBorderColor  =  #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
      centerButtonBorderWidth = 4
        
      centerButtonImageSize = 30
      centerButtonImage = UIImage(named: "ic_wicket")

        
        
      
        
        print(self.tabBar.frame.height)
        print(myScreenHeight - self.tabBar.frame.minY)

      
        centerButtonBottomMargin =  myScreenHeight - self.tabBar.frame.minY

        
        setupCenetrButton()

        
        

        

    }

}
