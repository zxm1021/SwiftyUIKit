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

public extension UIToolbar {
    
    @discardableResult @inlinable
    func delegate(_ newValue: UIToolbarDelegate?) -> Self {
        self.delegate = newValue
        return self
    }
    
    @discardableResult @inlinable
    func items(_ newValue: [UIBarButtonItem]?) -> Self {
        self.items = newValue
        return self
    }
    
    @discardableResult @inlinable
    func standardAppearance(_ newValue: UIToolbarAppearance) -> Self {
        self.standardAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func compactAppearance(_ newValue: UIToolbarAppearance?) -> Self {
        self.compactAppearance = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func scrollEdgeAppearance(_ newValue: UIToolbarAppearance?) -> Self {
        self.scrollEdgeAppearance = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func compactScrollEdgeAppearance(_ newValue: UIToolbarAppearance?) -> Self {
        self.compactScrollEdgeAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isTranslucent(_ newValue: Bool) -> Self {
        self.isTranslucent = newValue
        return self
    }
    
    @discardableResult @inlinable
    func barStyle(_ newValue: UIBarStyle) -> Self {
        self.barStyle = newValue
        return self
    }
    
    @discardableResult @inlinable
    func barTintColor(_ newValue: UIColor?) -> Self {
        self.barTintColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func items(_ items: [UIBarButtonItem]?, animated: Bool) -> Self {
        self.setItems(items, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundImage(_ image: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundImage(image, forToolbarPosition: topOrBottom, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func shadowImage(_ image: UIImage?, forToolbarPosition topOrBottom: UIBarPosition) -> Self {
        self.setShadowImage(image, forToolbarPosition: topOrBottom)
        return self
    }
}
