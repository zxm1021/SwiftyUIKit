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

public extension UITabBarItem {
    
    @discardableResult @inlinable
    func selectedImage(_ newValue: UIImage?) -> Self {
        self.selectedImage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func standardAppearance(_ newValue: UITabBarAppearance?) -> Self {
        self.standardAppearance = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func scrollEdgeAppearance(_ newValue: UITabBarAppearance?) -> Self {
        self.scrollEdgeAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func titlePositionAdjustment(_ newValue: UIOffset) -> Self {
        self.titlePositionAdjustment = newValue
        return self
    }
    
    @discardableResult @inlinable
    func badgeValue(_ newValue: String?) -> Self {
        self.badgeValue = newValue
        return self
    }
    
    @discardableResult @inlinable
    func badgeColor(_ newValue: UIColor?) -> Self {
        self.badgeColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func badgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        self.setBadgeTextAttributes(textAttributes, for: state)
        return self
    }
}
