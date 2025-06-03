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

public extension UISlider {
    
    @discardableResult @inlinable
    func minimumValue(_ value: Float) -> Self {
        self.minimumValue = value
        return self
    }
    
    @discardableResult @inlinable
    func maximumValue(_ value: Float) -> Self {
        self.maximumValue = value
        return self
    }
    
    @discardableResult @inlinable
    func value(_ newValue: Float) -> Self {
        self.value = newValue
        return self
    }
    
    @discardableResult @inlinable
    func isContinuous(_ newValue: Bool) -> Self {
        self.isContinuous = newValue
        return self
    }
        
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func preferredBehavioralStyle(_ newValue: UIBehavioralStyle) -> Self {
        self.preferredBehavioralStyle = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumValueImage(_ newValue: UIImage?) -> Self {
        self.minimumValueImage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func maximumValueImage(_ newValue: UIImage?) -> Self {
        self.maximumValueImage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumTrackTintColor(_ newValue: UIColor?) -> Self {
        self.minimumTrackTintColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func maximumTrackTintColor(_ newValue: UIColor?) -> Self {
        self.maximumTrackTintColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setMinimumTrackImage(image, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func maximumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setMaximumTrackImage(image, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func thumbImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setThumbImage(image, for: state)
        return self
    }
    
    @discardableResult @inlinable
    func thumbTintColor(_ newValue: UIColor?) -> Self {
        self.thumbTintColor = newValue
        return self
    }
}

// MARK: - On Value Changed
public extension UISlider {
        
    @objc
    private func valueChangedEvent() {
        if let action = associatedDictionary["uislider.value.changed"] as? ((UISlider) -> Void) {
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
