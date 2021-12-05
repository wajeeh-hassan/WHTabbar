# WHTabbar

A very simple solution to implement center button in your native UITabbar. 

![](https://github.com/wajeeh-hassan/WHTabbar/blob/master/Media/tabbar.png)


[![CI Status](https://img.shields.io/travis/wajeehulhassan/WHTabbar.svg?style=flat)](https://travis-ci.org/wajeehulhassan/WHTabbar)
[![Version](https://img.shields.io/cocoapods/v/WHTabbar.svg?style=flat)](https://cocoapods.org/pods/WHTabbar)
[![License](https://img.shields.io/cocoapods/l/WHTabbar.svg?style=flat)](https://cocoapods.org/pods/WHTabbar)
[![Platform](https://img.shields.io/cocoapods/p/WHTabbar.svg?style=flat)](https://cocoapods.org/pods/WHTabbar)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

WHTabbar is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WHTabbar'
```


## StoryBoard
 Create a class like bellow and give the class to  your Tabbar Controller in the storyboard 
 

## Swift Class
```swift
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

   
```


## Author

wajeehulhassan, wajeeh661@gmail.com

## License

WHTabbar is available under the MIT license. See the LICENSE file for more info.
