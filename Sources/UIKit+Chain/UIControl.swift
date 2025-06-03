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

public extension UIControl {
        
    @discardableResult @inlinable
    func isEnabled(_ newValue: Bool) -> Self {
        self.isEnabled = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isSelected(_ newValue: Bool) -> Self {
        self.isSelected = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isHighlighted(_ newValue: Bool) -> Self {
        self.isHighlighted = newValue
        return self
    }
    
    @discardableResult @inlinable
    func contentVerticalAlignment(_ newValue: UIControl.ContentVerticalAlignment) -> Self {
        self.contentVerticalAlignment = newValue
        return self
    }
    
    @discardableResult @inlinable
    func contentHorizontalAlignment(_ newValue: UIControl.ContentHorizontalAlignment) -> Self {
        self.contentHorizontalAlignment = newValue
        return self
    }
        
    @discardableResult @inlinable
    func isContextMenuInteractionEnabled(_ newValue: Bool) -> Self {
        self.isContextMenuInteractionEnabled = newValue
        return self
    }
    
    @discardableResult @inlinable
    func showsMenuAsPrimaryAction(_ newValue: Bool) -> Self {
        self.showsMenuAsPrimaryAction = newValue
        return self
    }
}
