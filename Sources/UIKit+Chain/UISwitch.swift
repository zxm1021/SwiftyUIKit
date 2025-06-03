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

public extension UISwitch {
    
    @discardableResult @inlinable
    func onTintColor(_ newValue: UIColor?) -> Self {
        onTintColor = newValue
        return self
    }

    @discardableResult @inlinable
    func thumbTintColor(_ newValue: UIColor?) -> Self {
        thumbTintColor = newValue
        return self
    }

    @discardableResult @inlinable
    func onImage(_ newValue: UIImage?) -> Self {
        onImage = newValue
        return self
    }

    @discardableResult @inlinable
    func offImage(_ newValue: UIImage?) -> Self {
        offImage = newValue
        return self
    }

    @discardableResult @inlinable
    func title(_ newValue: String?) -> Self {
        title = newValue
        return self
    }

    @discardableResult @inlinable
    func preferredStyle(_ newValue: UISwitch.Style) -> Self {
        preferredStyle = newValue
        return self
    }

    @discardableResult @inlinable
    func isOn(_ newValue: Bool) -> Self {
        isOn = newValue
        return self
    }
}

// MARK: - On Value Changed
public extension UISwitch {
        
    @objc
    private func valueChangedEvent() {
        if let action = associatedDictionary["uiswitch.value.changed"] as? ((UISwitch) -> Void) {
            action(self)
        }
    }
    
    @discardableResult
    func onValueChanged(_ action: @escaping (Self) -> Void) -> Self {
        associatedDictionary["uiswitch.value.changed"] = action
        addTarget(self, action: #selector(valueChangedEvent), for: .valueChanged)
        return self
    }
}
