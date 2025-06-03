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
import ObjectiveC

public extension UIView {
    
    func assign<T: UIView>(to variable : inout T?) -> Self {
        variable = self as? T
        return self
    }
    
    @discardableResult @inlinable
    func aspectRatio(_ ratio: CGFloat) -> Self {
        self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: ratio).isActive = true
        return self
    }
    
    @discardableResult @inlinable
    func tintColor( _ tintColor: UIColor?) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    @discardableResult @inlinable
    func alpha( _ newValue: CGFloat) -> Self {
        self.alpha = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isOpaque( _ newValue: Bool) -> Self {
        self.isOpaque = newValue
        return self
    }
    
    @discardableResult @inlinable
    func disableUserInterface(duration: DispatchTimeInterval? = nil) -> Self {
        isUserInteractionEnabled = false
        
        if let duration {
            DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                self.isUserInteractionEnabled = true
            }
        }
        
        return self
    }
    
    @discardableResult @inlinable
    func enableUserInterface() -> Self {
        isUserInteractionEnabled = true
        return self
    }
    
    @discardableResult @inlinable
    func hidden(_ yesno: Bool) -> Self {
        isHidden = yesno
        return self
    }
    
    @discardableResult @inlinable
    func tag( _ tag: Int) -> Self {
        self.tag = tag
        return self
    }
    
    @discardableResult @inlinable
    func clipsToBounds( _ value: Bool) -> Self {
        self.clipsToBounds = value
        return self
    }
    
    @discardableResult @inlinable
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult @inlinable
    func size2Fit() -> Self {
        self.sizeToFit()
        return self
    }
    
    @discardableResult @inlinable
    func tintAdjustmentMode(_ newValue: UIView.TintAdjustmentMode) -> Self {
        tintAdjustmentMode = newValue
        return self
    }
    
    @discardableResult @inlinable
    func clearsContextBeforeDrawing(_ newValue: Bool ) -> Self {
        clearsContextBeforeDrawing = newValue
        return self
    }
    
    @discardableResult @inlinable
    func mask(_ newValue: UIView?) -> Self {
        mask = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isMultipleTouchEnabled(_ newValue: Bool ) -> Self {
        isMultipleTouchEnabled = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isExclusiveTouch(_ newValue: Bool ) -> Self {
        isExclusiveTouch = newValue
        return self
    }
    
    @discardableResult @inlinable
    func transform(_ newValue: CGAffineTransform ) -> Self {
        transform = newValue
        return self
    }
    
    @discardableResult @inlinable
    func transform3D(_ newValue: CATransform3D ) -> Self {
        transform3D = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func anchorPoint(_ newValue: CGPoint ) -> Self {
        anchorPoint = newValue
        return self
    }
    
    @discardableResult @inlinable
    func preservesSuperviewLayoutMargins(_ newValue: Bool ) -> Self {
        preservesSuperviewLayoutMargins = newValue
        return self
    }
    
    @discardableResult @inlinable
    func layoutMargins(_ newValue: UIEdgeInsets ) -> Self {
        layoutMargins = newValue
        return self
    }
    
    @discardableResult @inlinable
    func directionalLayoutMargins(_ newValue: NSDirectionalEdgeInsets ) -> Self {
        directionalLayoutMargins = newValue
        return self
    }
    
    @discardableResult @inlinable
    func insetsLayoutMarginsFromSafeArea(_ newValue: Bool ) -> Self {
        insetsLayoutMarginsFromSafeArea = newValue
        return self
    }
    
    @discardableResult @inlinable
    func removeAllConstraints() -> Self {
        removeConstraints(constraints)
        return self
    }
}
