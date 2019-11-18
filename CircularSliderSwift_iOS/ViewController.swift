//
//  ViewController.swift
//  CircularSliderSwift_iOS
//
//  Created by Twinbit on 19/11/19.
//  Copyright © 2019 twinbit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     let shapeLayer = CAShapeLayer()
    
    
    @IBOutlet var SliderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeSlider()
    }
    
    func makeSlider()
      {
          print("ttt")
          
          let center = SliderView.center
          
          
          
          
          let trackLayer = CAShapeLayer()
          
          let circularPath = UIBezierPath(arcCenter: .zero, radius: 120, startAngle: 0, endAngle: 2 * CGFloat(Double.pi), clockwise: true)
          
          trackLayer.path = circularPath.cgPath
          trackLayer.lineWidth = 20
          trackLayer.lineCap = .round
          trackLayer.strokeColor = UIColor.lightGray.cgColor
          trackLayer.fillColor = UIColor.clear.cgColor
          trackLayer.position = SliderView.center
          
          
          view.layer.addSublayer(trackLayer)
          
          shapeLayer.path = circularPath.cgPath
          shapeLayer.lineWidth = 25
          shapeLayer.strokeEnd = 0
          shapeLayer.lineCap = .round
          shapeLayer.position = SliderView.center
          shapeLayer.transform = CATransform3DMakeRotation(-CGFloat.pi/2, 0, 0, 1)
          shapeLayer.strokeColor = CGColor(srgbRed: 34/255, green: 184/255, blue: 255/255, alpha: 1)
          shapeLayer.fillColor = UIColor.clear.cgColor
          view.layer.addSublayer(shapeLayer)
          
          // view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
          
          
          let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
          
          var total: Double!
          var free: Double!
          
       
          
         
          
        //  persentageLabel.text = "\(rest)"
        basicAnimation.toValue = 0.85
          basicAnimation.duration = 2
          basicAnimation.fillMode = .forwards
          basicAnimation.isRemovedOnCompletion = false
         shapeLayer.add(basicAnimation, forKey: "urSoBasic")
          
          
      }


}

