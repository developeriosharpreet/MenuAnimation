//
//  RoundView.swift
//  MenuAnimation
//
//  Created by Animators on 12/06/18.
//  Copyright © 2018 Animators. All rights reserved.
//

import UIKit

@IBDesignable
class RoundView: UIView {
    
   
    
    @IBInspectable public var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
}

