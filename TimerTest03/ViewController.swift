//
//  ViewController.swift
//  TimerTest03
//
//  Created by D7703_11 on 2019. 3. 28..
//  Copyright © 2019년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AlienImage: UIImageView!
    @IBOutlet weak var CountLable: UILabel!
    
    var count = 1
    var timer = Timer() //timer 객체 생성
    
    var animating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AlienImage.image = UIImage(named:"Image1")
        CountLable.text = String(count)
    }

    
    
    
    
    @IBAction func Play(_ sender: Any) {
        
        if animating == true{return}
        else{animating == true}
        
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
         
        
    }
    
    
    @IBAction func Pause(_ sender: Any) {
        
        
            timer.invalidate()
            animating = false;
        
        
    }
    
    
    @IBAction func Stop(_ sender: Any) {

            timer.invalidate() //timer()를 멈춤
            count = 0
        
        
    }
    
    @objc func doAnimation(){  //selector로 연결
        if(count == 5){
            count = 0
        }
        count += 1
        
        AlienImage.image = UIImage(named: "Image\(count)")
        CountLable.text = String(count)
    }
}

