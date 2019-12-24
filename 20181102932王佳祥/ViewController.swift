//
//  ViewController.swift
//  20181102932王佳祥
//
//  Created by s20181102932 on 2019/12/18.
//  Copyright © 2019 wjx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a=""
    var b=""
    var x=""
    var c:Double=0
    var d:Double=0
    var r:Double=0
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var yunsuanfu: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var result: UITextField!
    @IBAction func jisuan(_ sender: UIButton) {
        a=number1.text!;
        x=yunsuanfu.text!;
        b=number2.text!;
        c=Double(a)!
        d=Double(b)!
        if(x=="+")
        {
            r=c+d;
            result.text=String(r)
        }
        if(x=="-")
        {
           r=c-d;
            result.text=String(r)
        }
        if(x=="*")
        {
          r=c*d;
          result.text=String(r)
        }
        if(x=="/")
        {
            r=c/d;
            result.text=String(r)
        }
    }
   
    @IBOutlet weak var picture: UIImageView!
    @IBAction func suijitu(_ sender: UIButton) {
        let numbers = arc4random() % (4 - 1) + 1
        if(numbers==1)
        {
            picture.image = UIImage(named:"1")
        }
        if(numbers==2)
        {
          picture.image = UIImage(named:"2")
        }
        if(numbers==3)
        {
            picture.image = UIImage(named:"3")
        }
    }
    
    @IBOutlet weak var jindutiao: UIProgressView!
    @IBAction func begin(_ sender: UIButton) {
        jindutiao.progress = jindutiao.progress + 0.1
        if(jindutiao.progress == 1)
        {
            let alert = UIAlertController(title:"提示", message:"时间已耗尽", preferredStyle:.alert)
            present(alert,animated:true,completion:nil)
            presentedViewController?.dismiss(animated: true, completion:nil)
             jindutiao.progress = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

