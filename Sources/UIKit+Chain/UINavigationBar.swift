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

public extension UINavigationBar {
    
    @discardableResult @inlinable
    func transparent() -> Self {
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
        return self
    }
    
    @discardableResult @inlinable
    func delegate(_ newValue: UINavigationBarDelegate?) -> Self {
        self.delegate = newValue
        return self
    }
    
    @discardableResult @inlinable
    func items(_ newValue: [UINavigationItem]?) -> Self {
        self.items = newValue
        return self
    }
    
    @discardableResult @inlinable
    func prefersLargeTitles(_ newValue: Bool) -> Self {
        self.prefersLargeTitles = newValue
        return self
    }
    
    @discardableResult @inlinable
    func standardAppearance(_ newValue: UINavigationBarAppearance) -> Self {
        self.standardAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func compactAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.compactAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func scrollEdgeAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.scrollEdgeAppearance = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func compactScrollEdgeAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.compactScrollEdgeAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isTranslucent(_ newValue: Bool) -> Self {
        self.isTranslucent = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func preferredBehavioralStyle(_ newValue: UIBehavioralStyle) -> Self {
        self.preferredBehavioralStyle = newValue
        return self
    }
}

// MARK: - Legacy customizations
public extension UINavigationBar {
    
    @discardableResult @inlinable
    func barStyle(_ newValue: UIBarStyle) -> Self {
        self.barStyle = newValue
        return self
    }
    
    @discardableResult @inlinable
    func titleTextAttributes(_ newValue: [NSAttributedString.Key: Any]?) -> Self {
        self.titleTextAttributes = newValue
        return self
    }
    
    @discardableResult @inlinable
    func largeTitleTextAttributes(_ newValue: [NSAttributedString.Key: Any]?) -> Self {
        self.largeTitleTextAttributes = newValue
        return self
    }
        
    @discardableResult @inlinable
    func backIndicatorImage(_ newValue: UIImage?) -> Self {
        self.backIndicatorImage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func backIndicatorTransitionMaskImage(_ newValue: UIImage?) -> Self {
        self.backIndicatorTransitionMaskImage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func barTintColor(_ newValue: UIColor?) -> Self {
        self.barTintColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func shadowImage(_ newValue: UIImage?) -> Self {
        self.shadowImage = newValue
        return self
    }

    @discardableResult @inlinable
    func backgroundImage(_ image: UIImage?, for barMetrics: UIBarMetrics) -> Self {
        setBackgroundImage(image, for: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundImage(_ image: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
        return self
    }
}
