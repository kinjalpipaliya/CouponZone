//
//  UIView+Extension.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 27/08/21.
//

import Foundation
import UIKit

extension UIView {
    @discardableResult
    func addLineDashedStroke(pattern: [NSNumber]?, radius: CGFloat, color: CGColor) -> CALayer {
        let borderLayer = CAShapeLayer()
        borderLayer.lineWidth = 3
        borderLayer.strokeColor = color
        borderLayer.lineDashPattern = pattern
        borderLayer.frame = bounds
        borderLayer.fillColor = nil
        borderLayer.path = UIBezierPath(roundedRect: bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius)).cgPath
        
        layer.addSublayer(borderLayer)
        return borderLayer
    }
    
    func applyShadow(color: UIColor) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
}
