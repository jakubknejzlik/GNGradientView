//
//  GNGradientView.swift
//  Pods
//
//  Created by Jakub Knejzlik on 19/09/16.
//
//

import UIKit

@IBDesignable class GNGradientView: UIView {
    
    @IBInspectable var topAlpha: CGFloat = 1 {
        didSet {
            updateAlphas()
        }
    }
    @IBInspectable var middleAlpha: CGFloat = 0.5 {
        didSet {
            updateAlphas()
        }
    }
    @IBInspectable var bottomAlpha: CGFloat = 0 {
        didSet {
            updateAlphas()
        }
    }
    @IBInspectable var vertical: Bool = true {
        didSet {
            gradientView_setMaskDirection(value: vertical ? .vertical : .horizontal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    func initialize() {
        updateAlphas()
        gradientView_setMaskDirection(value: .vertical)
    }
    
    func updateAlphas() {
        gradientView_setMaskAlphaChannels([topAlpha,middleAlpha,bottomAlpha])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientView_updateMaskFrame()
    }
    
    override func prepareForInterfaceBuilder() {
//        backgroundColor = UIColor.green
    }
}
