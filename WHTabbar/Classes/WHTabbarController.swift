import UIKit


class WHTabbarController: UITabBarController {
    
    static var globalCenterBtn : UIView?
    static var globalBlockView : UIView?
    
  //  @IBOutlet weak var tabbar: UITabBar!
    
    
    var tabbarHeight = 0.0
    var centreButtonHeight = 0.0

    
    
    // Screen width.
    public var myScreenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

    // Screen height.
    public var myScreenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do any additional setup after loading the view.
        
//        self.tabbar.backgroundColor = .clear
    
        setupCenetrButton()
        
    }
    
    @objc func centerButtonAction(sender: UIButton) {
        
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
    }
    override func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem]) {
    }
    
    
    
    func setupCenetrButton()  {
                
        tabbarHeight = self.tabBar.frame.height
        centreButtonHeight = tabbarHeight + 6
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            self.tabBar.items?[2].title = ""
        }
        
        let centreButtonContainer = UIView(frame: CGRect(x: 0, y: 0, width: centreButtonHeight , height: centreButtonHeight))
        centreButtonContainer.layer.cornerRadius = centreButtonHeight / 2
        
        
        if UIDevice().userInterfaceIdiom == .phone {
            
            let point =  tabbarHeight + tabbarHeight / 2
            centreButtonContainer.frame.origin.y = self.view.bounds.height - point
            centreButtonContainer.frame.origin.x = self.view.bounds.width/2 - centreButtonContainer.frame.width/2
        
        }
    
        
        centreButtonContainer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        centreButtonContainer.layer.borderColor =  #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        centreButtonContainer.layer.borderWidth = 3
    
        let blockView = UIView(frame: CGRect(x: centreButtonContainer.center.x , y: centreButtonContainer.frame.minY, width: 78, height: tabbarHeight))
      

        let centerButton = UIButton(frame: centreButtonContainer.frame)
        
        let centerButtonImage = UIImageView(frame: CGRect(x: 0 , y: 0, width: 25, height: 25))
        centerButtonImage.center = CGPoint(x: centreButtonContainer.frame.size.width  / 2,
                                           y: centreButtonContainer.frame.size.height / 2)
        
        
        centerButtonImage.image = UIImage(named: "ic_wicket-1")
        
                
        centerButton.addTarget(self, action: #selector(centerButtonAction(sender:)), for: .touchUpInside)
        
        
        blockView.backgroundColor = UIColor.clear
        blockView.center.x = centreButtonContainer.center.x
        
        
        self.view.addSubview(blockView)
        self.view.addSubview(centreButtonContainer)
        centreButtonContainer.addSubview(centerButtonImage)
        centreButtonContainer.addSubview(centerButton)
        
        
        
    }
    
   
    
    
}
