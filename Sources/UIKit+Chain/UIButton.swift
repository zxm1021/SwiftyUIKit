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

public extension UIButton {
    
    @discardableResult @inlinable
    func image(_ image: UIImage?, state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundImage(_ image: UIImage?, state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult @inlinable
    func image(_ systemName: String, state: UIControl.State = .normal) -> Self {
        self.setImage(UIImage(systemName: systemName), for: state)
        return self
    }
    
    @discardableResult @inlinable
    func title(_ title: String?, state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func attributedText(_ richText: NSAttributedString) -> Self {
        self.setAttributedTitle(richText, for: .normal)
        return self
    }
    
    @discardableResult @inlinable
    func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> Self {
        setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func font(_ font: UIFont) -> Self {
        titleLabel?.font = font
        return self
    }
    
    @discardableResult @inlinable
    func fontSize(_ size: CGFloat) -> Self {
        titleLabel?.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult @inlinable
    func boldFontSize(_ size: CGFloat) -> Self {
        titleLabel?.font = UIFont.boldSystemFont(ofSize: size)
        return self
    }
    
    @discardableResult @inlinable
    func imageViewContentMode(_ mode: UIView.ContentMode) -> Self {
        imageView?.contentMode = mode
        return self
    }
    
    @discardableResult @inlinable
    func withImageView(_ block: (UIImageView?) -> Void) -> Self {
        block(imageView)
        return self
    }
    
    @discardableResult @inlinable
    func withTitleLabel(_ block: (UILabel?) -> Void) -> Self {
        block(titleLabel)
        return self
    }

    /// Spacing between title and image
    @discardableResult @inlinable
    func spacing(_ imageTitlePadding: CGFloat) -> Self {
        if isRTL {
            contentEdgeInsets = UIEdgeInsets(
                top: 0,
                left: imageTitlePadding,
                bottom: 0,
                right: 0
            )
            titleEdgeInsets = UIEdgeInsets(
                top: 0,
                left: -imageTitlePadding,
                bottom: 0,
                right: imageTitlePadding
            )
        } else {
            contentEdgeInsets = UIEdgeInsets(
                top: 0,
                left: 0,
                bottom: 0,
                right: imageTitlePadding
            )
            titleEdgeInsets = UIEdgeInsets(
                top: 0,
                left: imageTitlePadding,
                bottom: 0,
                right: -imageTitlePadding
            )
        }
        
        return self
    }
}
