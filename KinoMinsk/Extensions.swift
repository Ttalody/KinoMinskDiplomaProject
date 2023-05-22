//
//  Extensions.swift
//  KinoMinsk
//
//  Created by Artur on 29.04.23.
//

import UIKit

extension UIView {
    func setupGradient(colors: [UIColor]){
        let gradient = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = colors
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        layer.addSublayer(gradient)
    }
}
