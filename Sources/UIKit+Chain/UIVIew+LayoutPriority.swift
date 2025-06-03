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

public extension UIView {
    
    @discardableResult @inlinable
    func disableAutoresizingMask() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    @discardableResult @inlinable
    func flexible(axis: NSLayoutConstraint.Axis? = nil) -> Self {
        let priority = UILayoutPriority(249)
        switch axis {
        case .none:
            setContentHuggingPriority(priority, for: .horizontal)
            setContentCompressionResistancePriority(priority, for: .horizontal)
            setContentHuggingPriority(priority, for: .vertical)
            setContentCompressionResistancePriority(priority, for: .vertical)
        case .horizontal:
            setContentHuggingPriority(priority, for: .horizontal)
            setContentCompressionResistancePriority(priority, for: .horizontal)
        case .vertical:
            setContentHuggingPriority(priority, for: .vertical)
            setContentCompressionResistancePriority(priority, for: .vertical)
        @unknown default:
            break
        }
        return self
    }
    
    @discardableResult @inlinable
    func unflexible(axis: NSLayoutConstraint.Axis? = nil) -> Self {
        switch axis {
        case .none:
            setContentHuggingPriority(.required, for: .horizontal)
            setContentCompressionResistancePriority(.required, for: .horizontal)
            setContentHuggingPriority(.required, for: .vertical)
            setContentCompressionResistancePriority(.required, for: .vertical)
        case .horizontal:
            setContentHuggingPriority(.required, for: .horizontal)
            setContentCompressionResistancePriority(.required, for: .horizontal)
        case .vertical:
            setContentHuggingPriority(.required, for: .vertical)
            setContentCompressionResistancePriority(.required, for: .vertical)
        @unknown default:
            break
        }
        return self
    }
    
    @discardableResult @inlinable
    func huggingPriority(
        _ priority: UILayoutPriority,
         axis: NSLayoutConstraint.Axis...
    ) -> Self {
        axis.forEach {
            setContentHuggingPriority(priority, for: $0)
        }
        return self
    }
    
    @discardableResult @inlinable
    func compressionResistancePriority(
        _ priority: UILayoutPriority,
        axis: NSLayoutConstraint.Axis...
    ) -> Self {
        axis.forEach {
            setContentCompressionResistancePriority(priority, for: $0)
        }
        return self
    }
}
