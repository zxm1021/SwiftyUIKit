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

public extension UIBarItem {
    
    @discardableResult @inlinable
    func title(_ newValue: String?) -> Self {
        self.title = newValue
        return self
    }
    
    @discardableResult @inlinable
    func image(_ newValue: UIImage?) -> Self {
        self.image = newValue
        return self
    }
    
    @discardableResult @inlinable
    func landscapeImagePhone(_ newValue: UIImage?) -> Self {
        self.landscapeImagePhone = newValue
        return self
    }
    
    @discardableResult @inlinable
    func largeContentSizeImage(_ newValue: UIImage?) -> Self {
        self.largeContentSizeImage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func imageInsets(_ newValue: UIEdgeInsets) -> Self {
        self.imageInsets = newValue
        return self
    }
    
    @discardableResult @inlinable
    func landscapeImagePhoneInsets(_ newValue: UIEdgeInsets) -> Self {
        self.landscapeImagePhoneInsets = newValue
        return self
    }
    
    @discardableResult @inlinable
    func largeContentSizeImageInsets(_ newValue: UIEdgeInsets) -> Self {
        self.largeContentSizeImageInsets = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isEnabled(_ newValue: Bool) -> Self {
        self.isEnabled = newValue
        return self
    }
    
    @discardableResult @inlinable
    func tag(_ newValue: Int) -> Self {
        self.tag = newValue
        return self
    }
    
    @discardableResult @inlinable
    func titleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        self.setTitleTextAttributes(attributes, for: state)
        return self
    }
}
