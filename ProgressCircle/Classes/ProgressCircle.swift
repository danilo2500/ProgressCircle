//
//  ProgressCircle.swift
//  Circular Progress Bar
//
//  Created by Danilo Henrique on 29/07/16.
//  Copyright © 2016 Danilo Henrique. All rights reserved.
//

import UIKit

public class ProgressCircle: UIView {
    
    private var circle : CAShapeLayer! = nil
    private var progressCircle : CAShapeLayer! = nil
    private var percentageLabel = UILabel()
    
    private(set) public var progress : Float = 0
    
    private func createCircle(color: UIColor = UIColor(red:0.80, green:0.80, blue:0.80, alpha:1.0), tickness: Int = 4){
        layoutIfNeeded()
        
        let progressCircle2 = CAShapeLayer();
        let centerPoint2 = CGPoint (x: bounds.width / 2, y: bounds.width / 2)
        let circleRadius2 : CGFloat = bounds.width / 2
        let circlePath2 = UIBezierPath(arcCenter: centerPoint2, radius: circleRadius2, startAngle: CGFloat(-0.5 * Double.pi), endAngle: CGFloat(1.5 * Double.pi), clockwise: true)
        
        progressCircle2.path = circlePath2.cgPath
        progressCircle2.strokeColor = color.cgColor
        progressCircle2.fillColor = UIColor.clear.cgColor
        progressCircle2.lineWidth = CGFloat(tickness)
        progressCircle2.strokeStart = 0
        
        circle = progressCircle2
        layer.addSublayer(progressCircle2);
        progressCircle2.strokeEnd = 1;
    }
    
    private func createProgressCircle(color:UIColor = UIColor(red:0.20, green:0.80, blue:0.80, alpha:1.0),tickness:Int = 11){
        layoutIfNeeded()
        
        let progressCircle2 = CAShapeLayer()
        let centerPoint2 = CGPoint (x: bounds.width / 2, y: bounds.width / 2)
        let circleRadius2 : CGFloat = bounds.width / 2
        let circlePath2 = UIBezierPath(arcCenter: centerPoint2, radius: circleRadius2, startAngle: CGFloat(-0.5 * Double.pi), endAngle: CGFloat(1.5 * Double.pi), clockwise: true)
        
        progressCircle2.path = circlePath2.cgPath
        progressCircle2.strokeColor = color.cgColor
        progressCircle2.fillColor = UIColor.clear.cgColor
        progressCircle2.lineCap = CAShapeLayerLineCap.round
        progressCircle2.lineWidth = CGFloat(tickness)
        progressCircle2.strokeStart = 0;
        
        progressCircle = progressCircle2
        layer.addSublayer(progressCircle2);
        
        progressCircle2.strokeEnd = 0.0001;
        
        progress = 0
    }
    
    private func createLabel(fontSize:Int = 60) {
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height))
        
        //        label.restorationIdentifier = "label"
        label.text = "\(Int(progress))%"
        label.textColor = UIColor(red:0.20, green:0.40, blue:0.60, alpha:1.0)
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        label.font =  UIFont(name: "Helvetica", size:  CGFloat(fontSize) )
        
        addSubview(label)
        
        percentageLabel = label
    }
    
    override public func didMoveToSuperview() {
        createCircle()
        createProgressCircle()
        createLabel()
        backgroundColor = UIColor.clear
    }
    
    public func changePercentage(_ percentage: Float){
        
        if percentage == 0 {
            progressCircle.strokeEnd = 0.0001
            progress = 0
        } else {
            progressCircle.strokeEnd = CGFloat( percentage / 100.0 )
            progress = percentage
            if percentage >= 100 {
                progress = 100
            }
        }
        
        percentageLabel.text = "\(Int(progress))%"
    }
    
    public func changeColors(circleColor: UIColor, progressCircleColor: UIColor){
        progressCircle.strokeColor = progressCircleColor.cgColor
        circle.strokeColor = circleColor.cgColor
    }
    
}
