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

public extension UIBarButtonItem {
    
    @discardableResult @inlinable
    func customView(_ newValue: UIView?) -> Self {
        self.customView = newValue
        return self
    }
    
    @discardableResult @inlinable
    func primaryAction(_ newValue: UIAction) -> Self {
        self.primaryAction = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func changesSelectionAsPrimaryAction(_ newValue: Bool) -> Self {
        self.changesSelectionAsPrimaryAction = newValue
        return self
    }
    
    @discardableResult @inlinable
    func action(_ newValue: Selector?) -> Self {
        self.action = newValue
        return self
    }
    
    @discardableResult @inlinable
    func target(_ newValue: AnyObject?) -> Self {
        self.target = newValue
        return self
    }
    
    @discardableResult @inlinable
    func menu(_ newValue: UIMenu?) -> Self {
        self.menu = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func preferredMenuElementOrder(_ newValue: UIContextMenuConfiguration.ElementOrder) -> Self {
        self.preferredMenuElementOrder = newValue
        return self
    }
    
    @discardableResult @inlinable
    func style(_ newValue: UIBarButtonItem.Style) -> Self {
        self.style = newValue
        return self
    }
    
    @discardableResult @inlinable
    func tintColor(_ newValue: UIColor?) -> Self {
        self.tintColor = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func isHidden(_ newValue: Bool) -> Self {
        self.isHidden = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func isSelected(_ newValue: Bool) -> Self {
        self.isSelected = newValue
        return self
    }
    
    @discardableResult @inlinable
    func width(_ newValue: CGFloat) -> Self {
        self.width = newValue
        return self
    }
    
    @discardableResult @inlinable
    func possibleTitles(_ newValue: Set<String>?) -> Self {
        self.possibleTitles = newValue
        return self
    }
    
    @discardableResult @inlinable
    func backButtonBackgroundImage(_ image: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        self.setBackButtonBackgroundImage(image, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func backButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> Self {
        self.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func backButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> Self {
        self.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundImage(_ image: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundImage(image, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundImage(_ image: UIImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundImage(image, for: state, style: style, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func titlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> Self {
        self.setTitlePositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func menuRepresentation( _ newValue: UIMenuElement?) -> Self {
        self.menuRepresentation = newValue
        return self
    }
}

public extension UIBarButtonItem {
    
    private static let TapActionBlockKey = "uibarbuttonitem.tap.action"
    
    func onTapGesture(perform action: @escaping () -> Void) -> Self {
        associatedDictionary[Self.TapActionBlockKey] = action
        self.target = self
        self.action = #selector(tapAction)
        return self
    }
    
    @objc private func tapAction() {
        (associatedDictionary[Self.TapActionBlockKey] as? () -> Void)?()
    }
}
