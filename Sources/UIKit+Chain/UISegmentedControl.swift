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

public extension UISegmentedControl {

    @discardableResult @inlinable
    func image(_ image: UIImage?, forSegmentAt segment: Int) -> Self {
        self.setImage(image, forSegmentAt: segment)
        return self
    }
    
    @discardableResult @inlinable
    func title(_ title: String?, forSegmentAt segment: Int) -> Self {
        self.setTitle(title, forSegmentAt: segment)
        return self
    }
    
    @discardableResult @inlinable
    func action(_ action: UIAction, forSegmentAt segment: Int) -> Self {
        self.setAction(action, forSegmentAt:segment)
        return self
    }
    
    @discardableResult @inlinable
    func addSegment(action: UIAction, at segment: Int, animated: Bool) -> Self {
        self.insertSegment(action: action, at: segment, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func addSegment(with image: UIImage?, at segment: Int, animated: Bool) -> Self {
        self.insertSegment(with: image, at: segment, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func addSegment(withTitle title: String?, at segment: Int, animated: Bool) -> Self {
        self.insertSegment(withTitle: title, at: segment, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func selectedSegmentIndex(_ newValue: Int) -> Self {
        self.selectedSegmentIndex = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isMomentary(_ newValue: Bool) -> Self {
        self.isMomentary = newValue
        return self
    }
    
    @discardableResult @inlinable
    func width( _ width: CGFloat, forSegmentAt segment: Int) -> Self {
        self.setWidth(width, forSegmentAt: segment)
        return self
    }
    
    @discardableResult @inlinable
    func apportionsSegmentWidthsByContent(_ newValue: Bool) -> Self {
        self.apportionsSegmentWidthsByContent = newValue
        return self
    }
    
    @discardableResult @inlinable
    func titleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        self.setTitleTextAttributes(attributes, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func backgroundImage( _ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func contentPositionAdjustment(
        _ adjustment: UIOffset,
        forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment,
        barMetrics: UIBarMetrics
    ) -> Self {
        self.setContentPositionAdjustment(adjustment, forSegmentType: leftCenterRightOrAlone, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult @inlinable
    func dividerImage(
        _ dividerImage: UIImage?,
        forLeftSegmentState leftState: UIControl.State,
        rightSegmentState rightState: UIControl.State,
        barMetrics: UIBarMetrics
    )-> Self {
        self.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState, barMetrics: barMetrics)
        return self
    }
}

// MARK: - On Value Changed
public extension UISegmentedControl {
    
    @objc
    private func valueChangedEvent() {
        if let action = associatedDictionary["uisegmentedControl.value.changed"] as? ((UISegmentedControl) -> Void) {
            action(self)
        }
    }
    
    @discardableResult
    func onValueChanged(_ action: @escaping (Self) -> Void) -> Self {
        associatedDictionary["uisegmentedControl.value.changed"] = action
        addTarget(self, action: #selector(valueChangedEvent), for: .valueChanged)
        return self
    }
}
