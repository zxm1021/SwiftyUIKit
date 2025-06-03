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

public extension UIViewController {
    
    @discardableResult @inlinable
    func hidesBottomBarWhenPushed(_ newValue: Bool) -> Self {
        self.hidesBottomBarWhenPushed = newValue
        return self
    }
    
    @discardableResult @inlinable
    func title(_ text: String?) -> Self {
        self.title = text
        return self
    }
    
    @discardableResult @inlinable
    func backgroundColor(_ color: UIColor?) -> Self {
        self.view.backgroundColor = color
        return self
    }

    @discardableResult @inlinable
    func leftBarButtonItem(_ item: UIBarButtonItem?) -> Self {
        self.navigationItem.leftBarButtonItem = item
        return self
    }

    @discardableResult @inlinable
    func rightBarButtonItem(_ item: UIBarButtonItem?) -> Self {
        self.navigationItem.rightBarButtonItem = item
        return self
    }

    @discardableResult @inlinable
    func extendedLayoutIncludesOpaqueBars(_ newValue: Bool) -> Self {
        self.extendedLayoutIncludesOpaqueBars = newValue
        return self
    }

    @discardableResult @inlinable
    func edgesForExtendedLayout(_ newValue: UIRectEdge) -> Self {
        self.edgesForExtendedLayout = newValue
        return self
    }
    
    @discardableResult @inlinable
    func modalPresentationStyle(_ newValue: UIModalPresentationStyle) -> Self {
        self.modalPresentationStyle = newValue
        return self
    }

    @discardableResult @inlinable
    func definesPresentationContext(_ newValue: Bool) -> Self {
        self.definesPresentationContext = newValue
        return self
    }

    @discardableResult @inlinable
    func providesPresentationContextTransitionStyle(_ newValue: Bool) -> Self {
        self.providesPresentationContextTransitionStyle = newValue
        return self
    }

    @discardableResult @inlinable
    func modalTransitionStyle(_ newValue: UIModalTransitionStyle) -> Self {
        self.modalTransitionStyle = newValue
        return self
    }
}
