// Copyright (c) 2025 zhangxiuming
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

public extension UIView {
    
    @discardableResult
    func border(width: CGFloat, color: UIColor, radius: CGFloat, lineDashPattern: [NSNumber] = [3, 3]) -> Self {
        for subview in subviews where subview is DashBorderView {
            subview.removeFromSuperview()
        }
        let borderView = DashBorderView(radius: radius, color: color, superview: self)
        borderView.shapeLayer.lineWidth = width
        borderView.shapeLayer.lineDashPattern = lineDashPattern
        borderView.shapeLayer.fillColor = UIColor.clear.cgColor
        borderView.shapeLayer.strokeColor = color.resolvedColor(with: self.traitCollection).cgColor
        borderView.frame = self.bounds
        borderView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        borderView.setNeedsLayout()
        self.insertSubview(borderView, at: 0)
        return self
    }
    
    @discardableResult
    func border(width: CGFloat, color: UIColor) -> Self {
        layer.borderWidth = width
        layer.borderColor = color.resolvedColor(with: self.traitCollection).cgColor

        if let magicView = self.viewWithTag(1021) as? NormalBorderView {
            magicView.borderColor = color
        } else {
            addSubview(NormalBorderView(borderColor: color))
        }
        return self
    }
    
    private final class NormalBorderView: UIView {
        var borderColor: UIColor?
        var shadowColor: UIColor?
        
        init(borderColor: UIColor? = nil, shadowColor: UIColor? = nil) {
            self.borderColor = borderColor
            self.shadowColor = shadowColor
            super.init(frame: .zero)
            self.isHidden = true
            self.tag = 1021
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            if let superview {
                if let borderColor {
                    superview.layer.borderColor = borderColor.resolvedColor(with: superview.traitCollection).cgColor
                }
                if let shadowColor {
                    superview.layer.shadowColor = shadowColor.resolvedColor(with: superview.traitCollection).cgColor
                }
            }
        }
    }
    
    private final class DashBorderView: UIView {
        let radius: CGFloat
        let shapeLayer = CAShapeLayer()
        let color: UIColor
        
        init(radius: CGFloat, color: UIColor, superview: UIView) {
            self.radius = radius
            self.color = color
            super.init(frame: .zero)
            isHidden = true
            superview.layer.addSublayer(shapeLayer)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func layoutSubviews() {
            guard let superview = superview else {
                return
            }
            self.frame = superview.bounds
            shapeLayer.frame = superview.bounds
            shapeLayer.path = UIBezierPath(
                roundedRect: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height),
                byRoundingCorners: .allCorners,
                cornerRadii: CGSize(width: radius, height: radius)
            ).cgPath
        }
        
        override func willMove(toSuperview newSuperview: UIView?) {
            super.willMove(toSuperview: newSuperview)
            if newSuperview == nil {
                shapeLayer.removeFromSuperlayer()
            }
        }
        
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            shapeLayer.strokeColor = color.resolvedColor(with: self.traitCollection).cgColor
        }
    }
}
