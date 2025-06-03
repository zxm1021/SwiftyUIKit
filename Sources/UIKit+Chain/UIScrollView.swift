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

public extension UIScrollView {
    
    @discardableResult @inlinable
    func contentOffset(_ newValue: CGPoint) -> Self {
        contentOffset = newValue
        return self
    }

    @discardableResult @inlinable
    func contentSize(_ newValue: CGSize) -> Self {
        contentSize = newValue
        return self
    }

    @discardableResult @inlinable
    func contentInset(_ newValue: UIEdgeInsets) -> Self {
        contentInset = newValue
        return self
    }

    @discardableResult @inlinable
    func contentInsetAdjustmentBehavior(_ newValue: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        contentInsetAdjustmentBehavior = newValue
        return self
    }

    @discardableResult @inlinable
    func automaticallyAdjustsScrollIndicatorInsets(_ newValue: Bool) -> Self {
        automaticallyAdjustsScrollIndicatorInsets = newValue
        return self
    }

    @discardableResult @inlinable
    func delegate(_ newValue: UIScrollViewDelegate?) -> Self {
        delegate = newValue
        return self
    }

    @discardableResult @inlinable
    func isDirectionalLockEnabled(_ newValue: Bool) -> Self {
        isDirectionalLockEnabled = newValue
        return self
    }

    @discardableResult @inlinable
    func bounces(_ newValue: Bool) -> Self {
        bounces = newValue
        return self
    }

    @discardableResult @inlinable
    func alwaysBounceVertical(_ newValue: Bool) -> Self {
        alwaysBounceVertical = newValue
        return self
    }

    @discardableResult @inlinable
    func alwaysBounceHorizontal(_ newValue: Bool) -> Self {
        alwaysBounceHorizontal = newValue
        return self
    }

    @discardableResult @inlinable
    func isPagingEnabled(_ newValue: Bool) -> Self {
        isPagingEnabled = newValue
        return self
    }

    @discardableResult @inlinable
    func isScrollEnabled(_ newValue: Bool) -> Self {
        isScrollEnabled = newValue
        return self
    }

    @discardableResult @inlinable
    func showsVerticalScrollIndicator(_ newValue: Bool) -> Self {
        showsVerticalScrollIndicator = newValue
        return self
    }

    @discardableResult @inlinable
    func showsHorizontalScrollIndicator(_ newValue: Bool) -> Self {
        showsHorizontalScrollIndicator = newValue
        return self
    }

    @discardableResult @inlinable
    func indicatorStyle(_ newValue: UIScrollView.IndicatorStyle) -> Self {
        indicatorStyle = newValue
        return self
    }

    @available(iOS 11.1, *)
    @discardableResult @inlinable
    func verticalScrollIndicatorInsets(_ newValue: UIEdgeInsets) -> Self {
        verticalScrollIndicatorInsets = newValue
        return self
    }

    @available(iOS 11.1, *)
    @discardableResult @inlinable
    func horizontalScrollIndicatorInsets(_ newValue: UIEdgeInsets) -> Self {
        horizontalScrollIndicatorInsets = newValue
        return self
    }

    @discardableResult @inlinable
    func scrollIndicatorInsets(_ newValue: UIEdgeInsets) -> Self {
        scrollIndicatorInsets = newValue
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult @inlinable
    func decelerationRate(_ newValue: UIScrollView.DecelerationRate) -> Self {
        decelerationRate = newValue
        return self
    }

    @discardableResult @inlinable
    func indexDisplayMode(_ newValue: UIScrollView.IndexDisplayMode) -> Self {
        indexDisplayMode = newValue
        return self
    }

    @discardableResult @inlinable
    func delaysContentTouches(_ newValue: Bool) -> Self {
        delaysContentTouches = newValue
        return self
    }

    @discardableResult @inlinable
    func canCancelContentTouches(_ newValue: Bool) -> Self {
        canCancelContentTouches = newValue
        return self
    }

    @discardableResult @inlinable
    func minimumZoomScale(_ newValue: CGFloat) -> Self {
        minimumZoomScale = newValue
        return self
    }

    @discardableResult @inlinable
    func maximumZoomScale(_ newValue: CGFloat) -> Self {
        maximumZoomScale = newValue
        return self
    }

    @discardableResult @inlinable
    func zoomScale(_ newValue: CGFloat) -> Self {
        zoomScale = newValue
        return self
    }

    @discardableResult @inlinable
    func bouncesZoom(_ newValue: Bool) -> Self {
        bouncesZoom = newValue
        return self
    }

    @discardableResult @inlinable
    func scrollsToTop(_ newValue: Bool) -> Self {
        scrollsToTop = newValue
        return self
    }

    @discardableResult @inlinable
    func keyboardDismissMode(_ newValue: UIScrollView.KeyboardDismissMode) -> Self {
        keyboardDismissMode = newValue
        return self
    }

    @discardableResult @inlinable
    func refreshControl(_ newValue: UIRefreshControl?) -> Self {
        refreshControl = newValue
        return self
    }
}
