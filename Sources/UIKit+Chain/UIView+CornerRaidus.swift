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
    
    @discardableResult @inlinable
    func cornerRadius(_ size: CGFloat?) -> Self {
        self.layer.cornerRadius = size ?? 0
        return self
    }
    
    @discardableResult @inlinable
    func cornerRadius(_ size: CGFloat?, rtlSensitive: Bool = true, mask: CACornerMask...) -> Self {
        let mask = CACornerMask(mask)
        var corners = CACornerMask()
        
        if rtlSensitive, isRTL {
            if mask.contains(.layerMinXMinYCorner) {
                corners.insert(.layerMaxXMinYCorner)
            }
            if mask.contains(.layerMaxXMinYCorner) {
                corners.insert(.layerMinXMinYCorner)
            }
            if mask.contains(.layerMinXMaxYCorner) {
                corners.insert(.layerMaxXMaxYCorner)
            }
            if mask.contains(.layerMaxXMaxYCorner) {
                corners.insert(.layerMinXMaxYCorner)
            }
        } else {
            corners = mask
        }

        self.layer.maskedCorners = corners
        self.layer.cornerRadius = size ?? 0
        return self
    }
    
    @discardableResult
    func shadow(
        color: UIColor = UIColor.black,
        radius: CGFloat,
        x: CGFloat = 0,
        y: CGFloat = 0
    ) -> Self {
        self.layer.shadowColor = color.resolvedColor(with: self.traitCollection).cgColor
        self.layer.shadowOffset = CGSize(width: x, height:y)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = radius
        
        if let magicView = self.viewWithTag(1014) as? ShadowView {
            magicView.color = color
        } else {
            self.addSubview(ShadowView(color: color))
        }
        
        return self
    }
    
    private class ShadowView: UIView {
        var color: UIColor
        init(color: UIColor) {
            self.color = color
            super.init(frame: .zero)
            self.isHidden = true
            self.tag = 1014
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            if #available(iOS 13.0, *) {
                if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
                    superview?.layer.shadowColor = color.resolvedColor(with: self.traitCollection).cgColor
                }
            }
        }
    }
}
