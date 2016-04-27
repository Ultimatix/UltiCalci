//
//  MyCustomView.swift
//  UltiCalci
//
//  Created by Niruta Talwekar on 26/04/16.
//  Copyright © 2016 ultimatix. All rights reserved.
//

import Foundation
@IBDesignable
class MyCustomView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
}
