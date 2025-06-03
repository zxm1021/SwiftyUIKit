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

public extension UILabel {
    
    @discardableResult @inlinable
    func font(_ font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    @discardableResult @inlinable
    func fontSize(_ size: CGFloat) -> UILabel {
        self.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult @inlinable
    func boldFontSize(_ size: CGFloat) -> UILabel {
        self.font = UIFont.boldSystemFont(ofSize: size)
        return self
    }
    
    @discardableResult @inlinable
    func text(_ text: String?) -> UILabel {
        self.text = text
        return self
    }
    
    @discardableResult @inlinable
    func attributedText(_ text: NSAttributedString?) -> UILabel {
        self.attributedText = text
        return self
    }
    
    @discardableResult @inlinable
    func attributedText(_ richText: NSAttributedString) -> UILabel {
        self.attributedText = richText
        return self
    }
    
    @discardableResult @inlinable
    func textColor(_ textColor: UIColor?) -> UILabel {
        self.textColor = textColor
        return self
    }
    
    @discardableResult @inlinable
    func numberOfLines(_ numberOfLines: Int) -> UILabel {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult @inlinable
    func textAlignment(_ aligment: NSTextAlignment) -> UILabel {
        self.textAlignment = aligment
        return self
    }
    
    @discardableResult @inlinable
    func adjustsFontSizeToFitWidth(_ newValue: Bool) -> Self {
        adjustsFontSizeToFitWidth = newValue
        return self
    }
    
    @discardableResult @inlinable
    func baselineAdjustment(_ newValue: UIBaselineAdjustment) -> Self {
        baselineAdjustment = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumScaleFactor(_ newValue: CGFloat) -> Self {
        minimumScaleFactor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func lineBreakStrategy(_ newValue: NSParagraphStyle.LineBreakStrategy) -> Self {
        lineBreakStrategy = newValue
        return self
    }

    @discardableResult @inlinable
    func preferredMaxLayoutWidth(_ newValue: CGFloat) -> Self {
        preferredMaxLayoutWidth = newValue
        return self
    }
    
    @discardableResult @inlinable
    func lineBreakMode(_ newValue: NSLineBreakMode) -> Self {
        lineBreakMode = newValue
        return self
    }
    
    @discardableResult
    func lineSpacing(_ lineSpacing: CGFloat) -> Self {
        guard let attributedText else {
            return self
        }
        let attr = NSMutableAttributedString(attributedString: attributedText)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        attr.addAttribute(.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attr.length))
        self.attributedText = attr
        return self
    }
}
