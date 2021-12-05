import UIKit

open class WHTabbarController: UITabBarController {
    
    
    // Screen width.
    public var myScreenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    // Screen height.
    public var myScreenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    
    public var isCurvedTabbar : Bool = true
    public var centerButtonBottomMargin : CGFloat = 20.0
    public var centerButtonSize : CGFloat = 0.0
    public var centerButtonBackroundColor : UIColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    public var centerButtonBorderColor : UIColor =  #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    public var centerButtonBorderWidth : CGFloat = 3
    public var centerButtonImage : UIImage?
    public var centerButtonImageSize :  CGFloat = 25.0
    
    var blockView : UIView?
    var centreButtonContainer : UIView?
    public var shapeLayer: CALayer?

    
    open override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func setupCenetrButton(vPosition : CGFloat ,  buttonClicked: @escaping()->Void )  {
            
        
        if isCurvedTabbar{
            makeTabbarCurved()
        }
        
        let topSafeArea: CGFloat
        let bottomSafeArea: CGFloat
        if #available(iOS 11.0, *) {
            topSafeArea = view.safeAreaInsets.top
            bottomSafeArea = view.safeAreaInsets.bottom
        } else {
            topSafeArea = topLayoutGuide.length
            bottomSafeArea = bottomLayoutGuide.length
        }
        
      
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            self.tabBar.items?[2].title = ""
        }
        
        let centreButtonContainer = UIView(frame: CGRect(x: 0, y: 0, width: centerButtonSize , height: centerButtonSize))
        centreButtonContainer.layer.cornerRadius = centerButtonSize / 2
        
        
        
        if bottomSafeArea == 0{
            centerButtonBottomMargin =  centerButtonSize + 20
        }else{
         centerButtonBottomMargin = bottomSafeArea + tabBar.frame.height
        }
    
        
        centerButtonBottomMargin = centerButtonBottomMargin + vPosition

        if UIDevice().userInterfaceIdiom == .phone {
            
            centreButtonContainer.frame.origin.y = self.view.bounds.height - centerButtonBottomMargin
            
            centreButtonContainer.frame.origin.x = self.view.bounds.width/2 - centreButtonContainer.frame.width/2
            
        }
        
        
        centreButtonContainer.backgroundColor = centerButtonBackroundColor
        centreButtonContainer.layer.borderColor = centerButtonBorderColor.cgColor
        centreButtonContainer.layer.borderWidth = centerButtonBorderWidth
        centreButtonContainer.clipsToBounds = true
        
        let blockView = UIView(frame: CGRect(x: centreButtonContainer.center.x , y: centreButtonContainer.frame.minY, width: centerButtonSize + 20 , height: self.tabBar.frame.height))
        
        
        let centerButtonImageView = UIImageView(frame: CGRect(x: 0 , y: 0, width: centerButtonImageSize, height: centerButtonImageSize))
        
        centerButtonImageView.center = CGPoint(x: centreButtonContainer.frame.size.width  / 2,
                                               y: centreButtonContainer.frame.size.height / 2)
        
        centerButtonImageView.image = centerButtonImage
        
        blockView.backgroundColor = UIColor.clear
        blockView.center.x = centreButtonContainer.center.x
        
        self.view.addSubview(blockView)
        self.view.addSubview(centreButtonContainer)
        self.view.bringSubview(toFront: centreButtonContainer)
        
        centreButtonContainer.addSubview(centerButtonImageView)
        
        centreButtonContainer.TapLisner {
            buttonClicked()
        }
        
        
    }
    
 
    
    
    
}


