//
//  ViewController.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2015/12/29.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import UIKit
import BubbleTransition

var pageMenu : CAPSPageMenu?

class HomeViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var exhibitButton: UIButton!
    
    let transition = BubbleTransition()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - UI Setup
        self.title = "VegBag"
        self.addLeftBarButtonWithImage(UIImage(named: "menu24.png")!)
        let searchButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Camera, target: self, action: "onClicksearchButton:")
        let bellButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "onClickbellButton:")
        let rightBarButtons: NSArray = [searchButton, bellButton]
        
        self.navigationItem.setRightBarButtonItems(rightBarButtons as? [UIBarButtonItem], animated: true)
        
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
//        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
//        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
//        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
//                self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "<-", style: UIBarButtonItemStyle.Done, target: self, action: "didTapGoToLeft")
//                self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "->", style: UIBarButtonItemStyle.Done, target: self, action: "didTapGoToRight")
        
                // MARK: - Scroll menu setup
        
                // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        
        let controller1 : FlowerVegetablesCollectionViewController = FlowerVegetablesCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller1.title = "VegBag"
        controllerArray.append(controller1)
        
        let controller2 : BaseCollectionViewController = BaseCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller2.title = "MOOD"
        controllerArray.append(controller2)
        
        let controller3 : TestViewController = TestViewController(nibName: "TestViewController", bundle: nil)
        controller3.title = "MUSIC"
        controllerArray.append(controller3)
        
        let controller4 : TestViewController = TestViewController(nibName: "TestViewController", bundle: nil)
        controller4.title = "FAVORITES"
        controllerArray.append(controller4)
        
        let controller5 : EdibleRootsCollectionViewController = EdibleRootsCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller5.title = "EdibleRoots"
        controllerArray.append(controller5)
        
        let controller6 : FruitVegetablesCollectionViewController = FruitVegetablesCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller6.title = "FruitVegetables"
        controllerArray.append(controller6)
        
        let controller7 : FlowerVegetablesCollectionViewController = FlowerVegetablesCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller7.title = "FlowerVegetables"
        controllerArray.append(controller7)
        
        let controller8 : StemVegetablesCollectionViewController = StemVegetablesCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller8.title = "StemVegetables"
        controllerArray.append(controller8)
        
        let controller9 : LeafyVegetablesCollectionViewConroller = LeafyVegetablesCollectionViewConroller(nibName: "BaseCollectionViewController", bundle: nil)
        controller9.title = "LeafyVegetables"
        controllerArray.append(controller9)
    
        let controller10 : FruitCollectionViewController = FruitCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller10.title = "FruitCollection"
        controllerArray.append(controller10)
        
        let controller11 : KyotoVegetablesCollectionViewController = KyotoVegetablesCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        controller11.title = "KyotoVegetables"
        controllerArray.append(controller11)
        
        
        
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .ViewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .MenuHeight(40.0),
            .MenuItemWidth(90.0),
            .CenterMenuItems(true)
        ]
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 60.0, self.view.frame.width, self.view.frame.height - 60.0), pageMenuOptions: parameters)
        
        //self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        pageMenu!.didMoveToParentViewController(self)
        
        //exhibitButtonを一番上に持ってくる。
        self.view.bringSubviewToFront(exhibitButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
           }
    
    func didTapGoToLeft() {
        let currentIndex = pageMenu!.currentPageIndex
        
        if currentIndex > 0 {
            pageMenu!.moveToPage(currentIndex - 1)
        }
    }
    
    func didTapGoToRight() {
        let currentIndex = pageMenu!.currentPageIndex
        
        if currentIndex < pageMenu!.controllerArray.count {
            pageMenu!.moveToPage(currentIndex + 1)
        }
    }
    
    // MARK: - Container View Controller
    override func shouldAutomaticallyForwardAppearanceMethods() -> Bool {
        return true
    }
    
    override func shouldAutomaticallyForwardRotationMethods() -> Bool {
        return true
    }

    //ExhibitButtonをBubbleTransitionAnimationで表示
    @IBAction func onClickExhibitButton(sender: UIButton) {
        let cameraCaptureViewController = CameraCaptureViewController(nibName: "CameraCaptureViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: cameraCaptureViewController)
        navigationController.transitioningDelegate = self
        navigationController.modalPresentationStyle = .Custom
        self.presentViewController(navigationController, animated: true, completion: nil)
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .Present
        transition.startingPoint = exhibitButton.center
        transition.bubbleColor = exhibitButton.backgroundColor!
        return transition
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .Dismiss
        transition.startingPoint = exhibitButton.center
        transition.bubbleColor = exhibitButton.backgroundColor!
        return transition
    }


}

