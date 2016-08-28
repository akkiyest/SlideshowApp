//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Akihiro Itoh on 2016/08/23.
//  Copyright © 2016年 akihiro.itoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let maximagenum = 3
    var imagenum = 1
    var flagplay = 1
    var timer:NSTimer = NSTimer()
    @IBOutlet weak var Imageview: UIImageView!
    
    @IBAction func Prevbtn(sender: AnyObject) {
        if imagenum == 1 {
            imagenum = 3
            viewDidLoad()
        }else{
            imagenum -= 1
            viewDidLoad()
        }
    }
    @IBAction func Nextbtn(sender: AnyObject) {
        if imagenum == maximagenum {
            imagenum = 1
            viewDidLoad()
        }else{
            imagenum += 1
            viewDidLoad()
        }
    }
    @IBOutlet weak var prvbtnv: UIButton!
    @IBOutlet weak var nextbtnv: UIButton!
    @IBOutlet weak var Playbtnv: UIButton!
    
    @IBAction func Playbtn(sender: AnyObject) {
        if flagplay == 1{
            nextbtnv.hidden = true
            prvbtnv.hidden = true
            flagplay -= 1
            timer = NSTimer.scheduledTimerWithTimeInterval(2.0,target: self,selector:#selector(ViewController.playing),userInfo: nil,repeats: true)
            Playbtnv.setTitle("||", forState:.Normal)
            
        }else{
            nextbtnv.hidden = false
            prvbtnv.hidden = false
            timer.invalidate()
            Playbtnv.setTitle("▷", forState:.Normal)
            flagplay += 1
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Imageview.image = UIImage(named:imagenum.description+".jpg")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let picview = segue.destinationViewController as! PicViewController
        picview.imagenum2 = imagenum
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func unwind(segue:UIStoryboardSegue){
    }
    
    func playing(){
        if imagenum == maximagenum {
            imagenum = 1
            viewDidLoad()
        }else{
            imagenum += 1
            viewDidLoad()
        }
    }
    
}


