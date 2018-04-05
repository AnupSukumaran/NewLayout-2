//
//  CustomView.swift
//  NewLayout
//
//  Created by Sukumar Anup Sukumaran on 22/02/18.
//  Copyright © 2018 AssaRadviewTech. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class CustomView: UIView {
    
    
    @IBInspectable var shadowOpacity: CGFloat = 0.0 {
        
        didSet {
            self.layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize.zero{
        
        didSet {
            self.layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0{
        
        didSet{
            
            self.layer.borderWidth = borderWidth
            
        }
    }
    
    @IBInspectable var cR1: CGFloat = 1.0 {
        didSet {
            layer.cornerRadius = cR1
            clipsToBounds = true
        }
    }
    
//    @IBInspectable var cR2: CGFloat = 1.0 {
//        didSet {
//            layer.cornerRadius = cR2
//            clipsToBounds = true
//        }
//    }
//    
//    @IBInspectable var cR3: CGFloat = 1.0 {
//        didSet {
//            layer.cornerRadius = cR3
//            clipsToBounds = true
//        }
//    }
//    
//    @IBInspectable var cR4: CGFloat = 1.0 {
//        didSet {
//            layer.cornerRadius = cR4
//            clipsToBounds = true
//        }
//    }
    
    @IBInspectable var maskToBonds: Bool = false{
        didSet{
            self.layer.masksToBounds = maskToBonds
        }
    }
    
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        
        didSet {
            
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        configure()

    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
        setup()
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        configure()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        configure()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
        configure()
    }
    
    func setup() {
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 1.0
    }
    
    func configure() {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cR1
        
//        let maskPath = UIBezierPath(roundedRect: layer.bounds,
//                                    byRoundingCorners: [.bottomRight],
//                                   cornerRadii: CGSize(width: cR2, height: 0.0))
//
//
//        //, .topRight, .bottomLeft
//        let maskLayer = CAShapeLayer()
//
//
//        maskLayer.path = maskPath.cgPath
//      //  maskLayer.path = maskPath2.cgPath
//
//        layer.mask = maskLayer
      
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
   

}
