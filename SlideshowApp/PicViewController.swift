//
//  PicViewController.swift
//  SlideshowApp
//
//  Created by Akihiro Itoh on 2016/08/25.
//  Copyright © 2016年 akihiro.itoh. All rights reserved.
//

import UIKit

class PicViewController: UIViewController {
    var imagenum2:Int?
    
    @IBOutlet weak var Imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Imageview.image = UIImage(named:imagenum2!.description+".jpg")
    // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
