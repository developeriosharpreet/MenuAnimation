//
//  ViewController.swift
//  MenuAnimation
//
//  Created by Animators on 12/06/18.
//  Copyright © 2018 Animators. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewBtns: [RoundButton]!
    
    
    

    @IBAction func toggleMenu(_ sender: UIButton) {
        
        if overlayView.transform == .identity{
        
        UIView.animate(withDuration: 1, animations: {
            self.overlayView.transform = CGAffineTransform(scaleX: 11, y: 11)
            self.menuView.transform = CGAffineTransform(translationX: 0, y: -67)
            self.toggleBtn.transform = CGAffineTransform(rotationAngle: self.radians(180))
        }) { (true) in
            
            UIView.animate(withDuration: 0.3, animations: {
                      self.showBtns()
            })

        }
            
        }else{
            
            UIView.animate(withDuration: 0.1, animations: {
       self.showBtns()
            }) { (true) in
                UIView.animate(withDuration: 1, animations: {
                    self.overlayView.transform = .identity
                    self.menuView.transform = .identity
                    self.toggleBtn.transform = .identity
                })
            }
            
        }
        
        
    }
    @IBOutlet weak var toggleBtn: UIButton!
    @IBOutlet weak var overlayView: RoundView!
    @IBOutlet weak var menuView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in viewBtns {
            
            button.alpha = 0.0
        }
    }

    
    
    func showBtns(){
        
        let alpha = CGFloat(viewBtns[0].alpha == 0 ? 1 : 0)
        for button in viewBtns {
            
            button.alpha = alpha
            
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func radians(_ degrees:Double) ->CGFloat{
        
        
        
        return CGFloat(degrees * .pi/180)
    }

}

