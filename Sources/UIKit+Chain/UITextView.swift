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

public extension UITextView {
    
    @discardableResult @inlinable
    func text(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult @inlinable
    func font(_ newValue: UIFont?) -> Self {
        font = newValue
        return self
    }
    
    @discardableResult @inlinable
    func textColor(_ newValue: UIColor?) -> Self {
        textColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func textAlignment(_ newValue: NSTextAlignment) -> Self {
        textAlignment = newValue
        return self
    }
    
    @discardableResult @inlinable
    func selectedRange(_ newValue: NSRange) -> Self {
        selectedRange = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isEditable(_ newValue: Bool) -> Self {
        isEditable = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isSelectable(_ newValue: Bool) -> Self {
        isSelectable = newValue
        return self
    }
    
    @discardableResult @inlinable
    func dataDetectorTypes(_ newValue: UIDataDetectorTypes) -> Self {
        dataDetectorTypes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func allowsEditingTextAttributes(_ newValue: Bool) -> Self {
        allowsEditingTextAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func attributedText(_ newValue: NSAttributedString!) -> Self {
        attributedText = newValue
        return self
    }
    
    @discardableResult @inlinable
    func typingAttributes(_ newValue: [NSAttributedString.Key : Any]) -> Self {
        typingAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func inputView(_ newValue: UIView?) -> Self {
        inputView = newValue
        return self
    }
    
    @discardableResult @inlinable
    func inputAccessoryView(_ newValue: UIView?) -> Self {
        inputAccessoryView = newValue
        return self
    }
    
    @discardableResult @inlinable
    func clearsOnInsertion(_ newValue: Bool) -> Self {
        clearsOnInsertion = newValue
        return self
    }
    
    @discardableResult @inlinable
    func textContainerInset(_ newValue: UIEdgeInsets) -> Self {
        textContainerInset = newValue
        return self
    }
    
    @discardableResult @inlinable
    func linkTextAttributes(_ newValue: [NSAttributedString.Key : Any]!) -> Self {
        linkTextAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func usesStandardTextScaling(_ newValue: Bool) -> Self {
        usesStandardTextScaling = newValue
        return self
    }
}

// MARK: - On Value Changed
public extension UITextView {
    
    @discardableResult
    func onValueChanged(callback: @escaping (UITextView) -> Void) -> Self {
        self.observeNotification(UITextView.textDidChangeNotification) { textView, note in
            if let object = note.object as? UITextView, object === textView {
                callback(object)
            }
        }
        
        return self
    }
}
