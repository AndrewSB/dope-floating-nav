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

