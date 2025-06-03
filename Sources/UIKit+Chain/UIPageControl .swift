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

public extension UIPageControl {
    
    @discardableResult @inlinable
    func currentPage(_ newValue: Int) -> Self {
        self.currentPage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func numberOfPages(_ newValue: Int) -> Self {
        self.numberOfPages = newValue
        return self
    }
    
    @discardableResult @inlinable
    func hidesForSinglePage(_ newValue: Bool) -> Self {
        self.hidesForSinglePage = newValue
        return self
    }
    
    @discardableResult @inlinable
    func pageIndicatorTintColor(_ newValue: UIColor?) -> Self {
        self.pageIndicatorTintColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func currentPageIndicatorTintColor(_ newValue: UIColor?) -> Self {
        self.currentPageIndicatorTintColor = newValue
        return self
    }
    
    @discardableResult @inlinable
    func preferredIndicatorImage(_ newValue: UIImage?) -> Self {
        self.preferredIndicatorImage = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func preferredCurrentPageIndicatorImage(_ newValue: UIImage?) -> Self {
        self.preferredCurrentPageIndicatorImage = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func direction(_ newValue: UIPageControl.Direction) -> Self {
        self.direction = newValue
        return self
    }
    
    @discardableResult @inlinable
    func backgroundStyle(_ newValue: UIPageControl.BackgroundStyle) -> Self {
        self.backgroundStyle = newValue
        return self
    }
    
    @discardableResult @inlinable
    func allowsContinuousInteraction(_ newValue: Bool) -> Self {
        self.allowsContinuousInteraction = newValue
        return self
    }
    
    @discardableResult @inlinable
    func indicatorImage(_ image: UIImage?, forPage page: Int) -> Self {
        self.setIndicatorImage(image, forPage: page)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func currentPageIndicatorImage(_ image: UIImage?, forPage page: Int) -> Self {
        self.setCurrentPageIndicatorImage(image, forPage: page)
        return self
    }
}
