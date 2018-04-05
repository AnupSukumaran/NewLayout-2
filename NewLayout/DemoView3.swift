//
//  DemoView3.swift
//  NewLayout
//
//  Created by Sukumar Anup Sukumaran on 27/02/18.
//  Copyright © 2018 AssaRadviewTech. All rights reserved.
//

import UIKit

@IBDesignable
class DemoView3: UIView {

    var path: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //  self.backgroundColor = UIColor.gray
        
        //  simpleShapeLayer()
        //  maskVsSublayer()
        // self.backgroundColor = UIColor.white
        
        twoShapes()
      //  complexShape()
        //  createTextLayer()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
       // complexShape()
        twoShapes()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //complexShape()
        twoShapes()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       // complexShape()
        twoShapes()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
//complexShape()
        twoShapes()
    }
    
    func createRectangle() {
        
        path = UIBezierPath() // initialize the path.
        
        path.move(to: CGPoint(x: 0.0, y: 0.0)) // specify the point that the path should start get drawn.
        
        // create a line b/w the starting point and the bottom left side of the view
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        
        //create the bottom line (bottom left to bottom right).
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        
        //create the vertical line from the bottom right to top right size.
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        
        // Close the path. This will create the last line automatically.
        path.close()
        
        
    }
    
    func createTriangle() {
        path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.width/2, y: 0.0))
        
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        
        path.addCurve(to: CGPoint(x: 0.0 , y: 0.0), controlPoint1: CGPoint(x: 0.0,y: 0.0), controlPoint2: CGPoint(x: 0.0,y: 0.0))
        
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.close()
    }
    
    func simpleShapeLayer() {
        self.createRectangle()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = self.path.cgPath
        
        shapeLayer.fillColor = UIColor.yellow.cgColor
        shapeLayer.strokeColor = UIColor.brown.cgColor
        shapeLayer.lineWidth = 3.0
        
        self.layer.addSublayer(shapeLayer)
        
    }
    
    
    func twoShapes() {
        
       // let width: CGFloat = self.frame.size.width/2
     //   let height: CGFloat = self.frame.size.height/2
        
//        let path1 = UIBezierPath()
//        path1.move(to: CGPoint(x: width/2, y: 0.0))
//        path1.addLine(to: CGPoint(x: 0.0, y: height))
//        path1.addLine(to: CGPoint(x: width, y: height))
//        path1.close()
//
//        let path2 = UIBezierPath()
//        path2.move(to: CGPoint(x: width/2, y: height))
//        path2.addLine(to: CGPoint(x: 0.0, y: 0.0))
//        path2.addLine(to: CGPoint(x: width, y: 0.0))
//
//        path2.close()
        
        let path1 = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 - (self.frame.size.height/3)/2 - 55,
                                                y: self.frame.size.height/2 - (self.frame.size.height/3)/2 - 55,
                                                width: self.frame.size.height,
                                                height: self.frame.size.height))
        
        let path2 = UIBezierPath(ovalIn: CGRect(x: -300,
                                                y: self.frame.size.height/2 - 780,
                                                width: self.frame.size.height/2,
                                                height: self.frame.size.height/2))
        
        let path3 = UIBezierPath(ovalIn: CGRect(x: -90.0,
                                                y: -90.0,
                                                width: self.frame.size.height/2,
                                                height: self.frame.size.height/2))
        
        let path4 = UIBezierPath(ovalIn: CGRect(x: -180.0 ,
                                                y: self.frame.size.height - 530,
                                                width: self.frame.size.height/2,
                                                height: self.frame.size.height/2))
        
        let path5 = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 + 10 ,
                                                y: self.frame.size.height - (self.frame.size.height/4)/2,
                                                width: self.frame.size.height/4,
                                                height: self.frame.size.height/4))
        
        let path6 = UIBezierPath(ovalIn: CGRect(x: -300 ,
                                                y: self.frame.size.height/2 - 180,
                                                width: self.frame.size.height/2,
                                                height: self.frame.size.height/2))
        
        let path7 = UIBezierPath(ovalIn: CGRect(x: -99.0,
                                                y: 10.0,
                                                width: self.frame.size.height,
                                                height: self.frame.size.height))
        
       
        
        let shapeLayer1 = CAShapeLayer()
        shapeLayer1.path = path1.cgPath
       // shapeLayer1.fillColor = #colorLiteral(red: 0.4501087666, green: 0.2978996336, blue: 0.4749837518, alpha: 1)
          shapeLayer1.fillColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)

        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = path2.cgPath
         //shapeLayer2.fillColor = #colorLiteral(red: 0.4163782597, green: 0.840274632, blue: 0.8462145925, alpha: 1)
        shapeLayer2.fillColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)

        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = path3.cgPath
         shapeLayer3.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = path4.cgPath
         shapeLayer4.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let shapeLayer5 = CAShapeLayer()
        shapeLayer5.path = path5.cgPath
        shapeLayer5.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let shapeLayer6 = CAShapeLayer()
        shapeLayer6.path = path6.cgPath
        shapeLayer6.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let shapeLayer7 = CAShapeLayer()
        shapeLayer7.path = path7.cgPath
      //  shapeLayer7.fillColor = #colorLiteral(red: 0.94408077, green: 0.5908922553, blue: 0.3391365409, alpha: 1)
        shapeLayer7.fillColor = #colorLiteral(red: 0.9098039216, green: 0.2470588235, blue: 0.2039215686, alpha: 1)
        
//        shapeLayer2.position = CGPoint(x: width/2, y: height)
//        shapeLayer1.position = CGPoint(x: width/2, y: 0.0)
        
     //  shapeLayer3.position = CGPoint(x: 0.0 , y: 0.0)
        
//        shapeLayer1.bounds.origin = CGPoint(x: -20.0, y: -40.0)
//        shapeLayer1.bounds.size = CGSize(width: 200.0, height: 150.0)
//        shapeLayer1.backgroundColor = UIColor.magenta.cgColor
        
        self.layer.addSublayer(shapeLayer1)
        self.layer.addSublayer(shapeLayer2)
        self.layer.addSublayer(shapeLayer3)
        self.layer.addSublayer(shapeLayer4)
        self.layer.addSublayer(shapeLayer5)
        self.layer.addSublayer(shapeLayer6)
        self.layer.addSublayer(shapeLayer7)
        
    }
    
    func complexShape() {
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 17.0))
        path.addArc(withCenter: CGPoint(x: 17 , y: 17.0),
                    radius: 17.0,
                    startAngle: CGFloat(180.0).degreesToRadians,
                    endAngle: CGFloat(290.0).degreesToRadians,
                    clockwise: true)
        
        // path.addLine(to: CGPoint(x: self.frame.size.width - 80 , y: 0.0))
        
        path.addArc(withCenter: CGPoint(x: self.frame.size.width - 17 , y: self.frame.size.height/2 - 115),
                    radius: 17.0,
                    startAngle: CGFloat(290.0).degreesToRadians,
                    endAngle: CGFloat(0.0).degreesToRadians,
                    clockwise: true)
        //   path.addLine(to: CGPoint(x: self.frame.size.width/2, y: 0.0))
        //  path.addLine(to: CGPoint(x: self.frame.size.width - 50.0, y: 0.0))
        //        path.addCurve(to: CGPoint(x: self.frame.size.width, y: 50.0),
        //                      controlPoint1: CGPoint(x: self.frame.size.width + 50.0, y: 25.0),
        //                      controlPoint2: CGPoint(x: self.frame.size.width - 150.0, y: 50.0))
        //path.addLine(to: CGPoint(x: self.frame.size.width, y: 17.0))
        
        //  path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        
        path.addArc(withCenter: CGPoint(x: self.frame.size.width - 17, y: self.frame.size.height - 17.0),
                    radius: 17.0,
                    startAngle: CGFloat(0.0).degreesToRadians,
                    endAngle: CGFloat(90.0).degreesToRadians,
                    clockwise: true)
        
        // path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height/2 + 100))
        
        path.addArc(withCenter: CGPoint(x: 17, y:  self.frame.size.height - 17),
                    radius: 17.0,
                    startAngle: CGFloat(90.0).degreesToRadians,
                    endAngle: CGFloat(180.0).degreesToRadians,
                    clockwise: true)
        
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        shapeLayer.shadowColor = UIColor.black.cgColor
        shapeLayer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        shapeLayer.shadowOpacity = 1.0
        shapeLayer.shadowRadius = 5.0
        shapeLayer.shouldRasterize = true
        shapeLayer.rasterizationScale = UIScreen.main.scale
        
        layer.rasterizationScale = UIScreen.main.scale
        shapeLayer.fillColor = #colorLiteral(red: 1, green: 0.137254902, blue: 0.1568627451, alpha: 1)
        layer.addSublayer(shapeLayer)
    }
    
    func createTextLayer() {
        
        let textLayer = CATextLayer()
        textLayer.string = "Wow! \nThis is text on a layer!"
        textLayer.foregroundColor = UIColor.white.cgColor
        textLayer.font = UIFont(name: "Avenir", size: 15.0)
        textLayer.fontSize = 15.0
        textLayer.alignmentMode = kCAAlignmentCenter
        textLayer.backgroundColor = UIColor.orange.cgColor
        textLayer.frame = CGRect(x: 0.0, y: self.frame.size.height/2 - 20.0, width: self.frame.size.width, height: 40.0)
        textLayer.contentsScale = UIScreen.main.scale
        self.layer.addSublayer(textLayer)
    }
    
    //    override func draw(_ rect: CGRect) {
    //        //self.createRectangle()
    //       // self.createTriangle()
    //
    //      //  self.path = UIBezierPath(ovalIn: self.bounds)
    //
    ////         self.path = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 - ((self.frame.size.height - 90)/2), y: self.frame.size.height/2 - ((self.frame.size.height - 90)/2), width: self.frame.size.height - 90, height: self.frame.size.height - 90))
    //
    //       // path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15.0)
    //
    //      //  path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .bottomRight], cornerRadii: CGSize(width: 15.0, height: 0.0))
    ////        let startAngle: CGFloat = .pi  // 135 degree to radian is 135 * .pi/180 = 0.75 * 3.14 = 2.56(the radian of 135 degree angle)
    ////        print("StartAngle = \(startAngle), ")
    ////        let endAngle: CGFloat = 0
    ////        print("endAngle = \(endAngle), ")
    //
    //
    //
    ////        path = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2),
    ////                            radius: self.frame.size.height/2,
    ////                            startAngle: startAngle,
    ////                            endAngle: endAngle,
    ////                            clockwise: true)
    //
    //        path = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2,y: self.frame.size.height/2), radius: self.frame.size.height/2, startAngle: CGFloat(240.0).degreesToRadians , endAngle: CGFloat(15.0).degreesToRadians, clockwise: false)
    //
    //        UIColor.orange.setFill()
    //        path.fill()
    //
    //        UIColor.purple.setStroke()
    //        path.stroke()
    //    }
    
    func maskVsSublayer() {
        self.createTriangle()
        // path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15.0)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.red.cgColor
        
        //  self.layer.addSublayer(shapeLayer)
        self.layer.mask = shapeLayer
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    

}
