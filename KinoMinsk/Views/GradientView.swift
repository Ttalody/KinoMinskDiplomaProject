//
//  GradientView.swift
//  KinoMinsk
//
//  Created by Artur on 29.04.23.
//

import UIKit

class GradientView: UIView {
    
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradient()
        }
    }
    
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setupGradient()
        }
    }
    
    private let gradient = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
    
    private func setupGradient(){
        guard let startColor = startColor, let endColor = endColor else {
            return
        }
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        self.layer.addSublayer(gradient)
    }
    
}
