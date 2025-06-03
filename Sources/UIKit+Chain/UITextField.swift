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

public extension UITextField {
    
    @discardableResult @inlinable
    func text(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult @inlinable
    func attributedText(_ newValue: NSAttributedString?) -> Self {
        attributedText = newValue
        return self
    }
    
    @discardableResult @inlinable
    func defaultTextAttributes(_ newValue: [NSAttributedString.Key : Any]) -> Self {
        defaultTextAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func fontSize(_ size: CGFloat) -> Self {
        self.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult @inlinable
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult @inlinable
    func textColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }
    
    @discardableResult @inlinable
    func placeholder(_ text: String?) -> Self {
        self.placeholder = text
        return self
    }
    
    @discardableResult @inlinable
    func attributedPlaceholder(_ newValue: NSAttributedString?) -> Self {
        attributedPlaceholder = newValue
        return self
    }
    
    @discardableResult @inlinable
    func borderStyle(_ style: UITextField.BorderStyle) -> Self {
        self.borderStyle = style
        return self
    }

    @discardableResult @inlinable
    func clearsOnBeginEditing(_ newValue: Bool) -> Self {
        clearsOnBeginEditing = newValue
        return self
    }
    
    @discardableResult @inlinable
    func adjustsFontSizeToFitWidth(_ newValue: Bool) -> Self {
        adjustsFontSizeToFitWidth = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumFontSize(_ newValue: CGFloat) -> Self {
        minimumFontSize = newValue
        return self
    }

    @discardableResult @inlinable
    func delegate(_ newValue: UITextFieldDelegate?) -> Self {
        delegate = newValue
        return self
    }
    
    @discardableResult @inlinable
    func background(_ newValue: UIImage?) -> Self {
        background = newValue
        return self
    }
    
    @discardableResult @inlinable
    func disabledBackground(_ newValue: UIImage?) -> Self {
        disabledBackground = newValue
        return self
    }
    
    @discardableResult @inlinable
    func allowsEditingTextAttributes(_ newValue: Bool) -> Self {
        allowsEditingTextAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func typingAttributes(_ newValue: [NSAttributedString.Key : Any]?) -> Self {
        typingAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func clearButtonMode(_ newValue: UITextField.ViewMode) -> Self {
        clearButtonMode = newValue
        return self
    }
    
    @discardableResult @inlinable
    func leftView(_ newValue: UIView?) -> Self {
        leftView = newValue
        return self
    }
    
    @discardableResult @inlinable
    func leftViewMode(_ newValue: UITextField.ViewMode) -> Self {
        leftViewMode = newValue
        return self
    }
    
    @discardableResult @inlinable
    func rightView(_ newValue: UIView?) -> Self {
        rightView = newValue
        return self
    }
    
    @discardableResult @inlinable
    func rightViewMode(_ newValue: UITextField.ViewMode) -> Self {
        rightViewMode = newValue
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
}

// MARK: - On Value Changed
public extension UITextField {
    
    @discardableResult
    func onValueChanged(callback: @escaping (UITextField) -> Void) -> Self {
        self.observeNotification(UITextField.textDidChangeNotification) { textField, note in
            if let object = note.object as? UITextField, object === textField {
                callback(object)
            }
        }
        
        return self
    }
}
