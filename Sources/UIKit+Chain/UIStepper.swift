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

public extension UIStepper {
    
    @discardableResult @inlinable
    func continuous(_ newValue: Bool) -> Self {
        self.isContinuous = newValue
        return self
    }
    
    @discardableResult @inlinable
    func autorepeat(_ newValue: Bool) -> Self {
        self.autorepeat = newValue
        return self
    }
    
    @discardableResult @inlinable
    func wraps(_ newValue: Bool) -> Self {
        self.wraps = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumValue(_ newValue: Double) -> Self {
        self.minimumValue = newValue
        return self
    }
    
    @discardableResult @inlinable
    func maximumValue(_ newValue: Double) -> Self {
        self.maximumValue = newValue
        return self
    }
    
    @discardableResult @inlinable
    func stepValue(_ newValue: Double) -> Self {
        self.stepValue = newValue
        return self
    }
    
    @discardableResult @inlinable
    func value(_ newValue: Double) -> Self {
        self.value = newValue
        return self
    }
    
    @discardableResult @inlinable
    func decrementImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setDecrementImage(image, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func dividerImage(_ image: UIImage?, forLeftSegmentState: UIControl.State, rightSegmentState: UIControl.State) -> Self {
        setDividerImage(image, forLeftSegmentState: forLeftSegmentState, rightSegmentState: rightSegmentState)
        return self
    }
    
    @discardableResult @inlinable
    func incrementImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setIncrementImage(image, for: state)
        return self
    }

}

// MARK: - On Value Changed
public extension UIStepper {
        
    @objc
    private func valueChangedEvent() {
        if let action = associatedDictionary["uislider.value.changed"] as? ((UIStepper) -> Void) {
            action(self)
        }
    }
    
    @discardableResult
    func onValueChanged(_ action: @escaping (Self) -> Void) -> Self {
        associatedDictionary["uislider.value.changed"] = action
        addTarget(self, action: #selector(valueChangedEvent), for: .valueChanged)
        return self
    }
}
