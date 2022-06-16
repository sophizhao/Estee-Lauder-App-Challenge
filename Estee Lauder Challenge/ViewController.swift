//
//  ViewController.swift
//  Estee Lauder Challenge
//
//  Created by Sophia on 6/15/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    let screenSize: CGRect = UIScreen.main.bounds
    let waitTime = 0
    

    @IBOutlet weak var movingImage1: UIImageView!
    @IBOutlet weak var movingImage2: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var myWebView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
//        let googleURL = URL(string:"https://youtu.be/ZtnwWhYgkKs")
//        myWebView.load(URLRequest(url:googleURL!))
        
        UIView.animate(withDuration: 2.5, animations: { [self] in
                self.logo.frame.origin.y +=  360
            }, completion: nil)
            
        animateScroll()
        let timer : Timer?
        timer =  Timer.scheduledTimer(timeInterval: 20.0, target: self, selector:#selector(animateScroll), userInfo: nil, repeats: true)
        
        }
    
    @objc func animateScroll(){
        UIView.animate(withDuration: 10, delay: 0, options: .curveLinear, animations: { [self] in
            self.movingImage1.frame.origin.x += (self.screenSize.width)
        }, completion: nil)
            
        UIView.animate(withDuration: 20, delay: 0, options: .curveLinear, animations: { [self] in
            self.movingImage2.frame.origin.x += (self.screenSize.width)*2
        }, completion: nil)

        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(10), execute: {
            self.movingImage1.frame = self.movingImage1.frame.offsetBy(dx: -self.screenSize.width*2, dy: 0)
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(20), execute: {
            self.movingImage2.frame = self.movingImage2.frame.offsetBy(dx: -self.screenSize.width*2, dy: 0)

        })
        
        UIView.animate(withDuration: 10, delay: 10, options: .curveLinear, animations: { [self] in
            self.movingImage1.frame.origin.x += (self.screenSize.width)
        }, completion: nil)
    }
    


}

