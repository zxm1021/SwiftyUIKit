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
    func moveto( _ superview: UIView) -> Self {
        superview.addSubview(self)
        return self
    }
    
    @discardableResult @inlinable
    func addChild( _ subview: UIView) -> Self {
        addSubview(subview)
        return self
    }
    
    @discardableResult @inlinable
    func addSubview(_ subview: () -> UIView) -> Self {
        addSubview(subview())
        return self
    }

    @discardableResult @inlinable
    func filled(inset: NSDirectionalEdgeInsets = .zero, subview: () -> UIView) -> Self {
        return filled(subview(), inset: inset)
    }
    
    @discardableResult @inlinable
    func filled( _ subview: UIView, inset: NSDirectionalEdgeInsets = .zero) -> Self {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
        NSLayoutConstraint.activate([
            subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset.leading),
            subview.topAnchor.constraint(equalTo: topAnchor, constant: inset.top),
            subview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset.trailing),
            subview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset.bottom),
        ])
        return self
    }

    @discardableResult @inlinable
    func filltoMarginsGuide( _ superview: UIView) -> Self {
        superview.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: superview.layoutMarginsGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.layoutMarginsGuide.trailingAnchor),
            topAnchor.constraint(equalTo: superview.layoutMarginsGuide.topAnchor),
            bottomAnchor.constraint(equalTo: superview.layoutMarginsGuide.bottomAnchor),
        ])
        return self
    }
    
    @discardableResult @inlinable
    func fillto( _ superview: UIView, below: UIView? = nil) -> Self {
        superview.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
// TODO:        NSLayoutConstraint.active {
//            leadingAnchor.constraint(equalTo: superview.leadingAnchor)
//            if let below {
//                topAnchor.constraint(equalTo: below.bottomAnchor)
//            } else {
//                topAnchor.constraint(equalTo: superview.topAnchor)
//            }
//            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
//            trailingAnchor.constraint(equalTo: superview.trailingAnchor)
//        }
        return self
    }
    
    @discardableResult @inlinable
    func fillto( _ superview: UIView, inset: NSDirectionalEdgeInsets) -> Self {
        superview.filled(self, inset: inset)
        return self
    }
}
