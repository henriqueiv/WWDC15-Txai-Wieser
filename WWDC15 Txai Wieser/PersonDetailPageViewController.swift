//
//  PersonDetailPageViewController.swift
//  WWDC 2015 - Txai Wieser
//
//  Created by Txai Wieser on 18/04/15.
//  Copyright (c) 2015 Txai Wieser. All rights reserved.
//

import UIKit

class PersonDetailPageViewController: UIViewController {
    @IBOutlet weak var label: UITextView!
    @IBOutlet weak var imgView: UIImageView!
    
    var text:String?
    var image:UIImage?
    var imagesName:[String]?
    
    var color:UIColor = UIColor.whiteColor()
    var item:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = text
        imgView.image = image
        
        label.textColor = self.color
        imgView.image = imgView.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        imgView.tintColor = self.color

        updateAppleTV()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateAppleTV() {
        if let vc = AppDelegate.$.currentAppleTVViewController as? AppleTVLifeGraphMatchingViewController {
            vc.selectedIndex = item
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
