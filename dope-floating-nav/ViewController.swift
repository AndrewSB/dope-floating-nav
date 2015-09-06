//
//  ViewController.swift
//  dope-floating-nav
//
//  Created by Andrew Breckenridge on 9/5/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var floatingButton: CircularButton!
    @IBOutlet weak var floatingView: CircularView! {
        didSet {
//            floatingView.layer.anchorPoint = floatingButton.center
        }
    }
    var open = false
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let square = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        square.backgroundColor = UIColor.greenColor()
        
        view.addSubview(square)
        
        
        let keyframeAnimation = CAKeyframeAnimation(keyPath: "position.x")
        keyframeAnimation.values = [90, 0, 300, 200]
        keyframeAnimation.keyTimes = [1, 1.6, 2, 2.7]
        keyframeAnimation.duration = 4
        
        
        square.layer.addAnimation(keyframeAnimation, forKey: "wiggle")
    }
    
}


extension ViewController {

    @IBAction func floatingButtonWasHit() {
        
        if open {
            UIView.animateWithDuration(1) {
                self.floatingView.frame = CGRectInset(self.floatingView.frame, -20, -20)
            }
        } else {
            UIView.animateWithDuration(1) {
                self.floatingView.frame = CGRectInset(self.floatingView.frame, 20, 20)
            }
        }
        
        open = !open
    }

}

