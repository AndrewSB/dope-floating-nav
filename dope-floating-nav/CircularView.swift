//
//  CircularView.swift
//  dope-floating-nav
//
//  Created by Andrew Breckenridge on 9/5/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

@IBDesignable class CircularView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    
}

@IBDesignable class CircularButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    
}
