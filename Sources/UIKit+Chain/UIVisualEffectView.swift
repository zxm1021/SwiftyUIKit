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
    func blur(style: UIBlurEffect.Style) -> Self {
        if let view = self as? UIVisualEffectView {
            view.effect = UIBlurEffect(style: style)
            return self
        } else {
            return blur(effect: UIBlurEffect(style: style))
        }
    }
    
    @discardableResult @inlinable
    func vibrancy(blurStyle: UIBlurEffect.Style) -> Self {
        self.blur(effect: UIVibrancyEffect(blurEffect: UIBlurEffect(style: blurStyle)))
    }
    
    @discardableResult @inlinable
    func vibrancy(blurStyle: UIBlurEffect.Style, style: UIVibrancyEffectStyle) -> Self {
        self.blur(effect: UIVibrancyEffect(blurEffect: UIBlurEffect(style: blurStyle), style: style))
    }
    
    @discardableResult
    func blur(effect: UIVisualEffect) -> Self {
        if let view = self as? UIVisualEffectView {
            view.effect = effect
            return self
        } else {
            let blurView = self.subviews.first{ $0 is UIVisualEffectView } ?? UIVisualEffectView(effect: effect)
            (blurView as! UIVisualEffectView).effect = effect
            blurView.frame = bounds
            blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(blurView)
            return self
        }
    }
}
