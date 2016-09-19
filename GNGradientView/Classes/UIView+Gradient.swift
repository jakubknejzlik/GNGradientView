//
//  UIView+Gradient.swift
//  Pods
//
//  Created by Jakub Knejzlik on 19/09/16.
//
//

import UIKit

public enum GradientDirection {
    case vertical
    case horizontal
}

extension UIView {
    
    var gradientMaskLayer: CAGradientLayer {
        if let mask = self.layer.mask as? CAGradientLayer {
            return mask
        }
        let mask = CAGradientLayer()
        self.layer.mask = mask
        return mask
    }
    
    public func gradientView_setMaskDirection(value: GradientDirection) {
        switch value {
        case .vertical:
            gradientMaskLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientMaskLayer.endPoint = CGPoint(x: 0.5, y: 1)
            break
        case .horizontal:
            gradientMaskLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientMaskLayer.endPoint = CGPoint(x: 1, y: 0.5)
            break
        }
    }
    
    public func gradientView_setMaskAlphaChannels(_ channels: [CGFloat]) {
        gradientMaskLayer.colors = channels.map { UIColor(white: 1, alpha: $0).cgColor }
    }
    
    public func gradientView_updateMaskFrame() {
        self.layer.mask?.frame = self.layer.bounds
    }

}
