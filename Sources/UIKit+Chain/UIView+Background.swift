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
    func backgroundColor(_ color: UIColor?) -> Self {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult @inlinable
    func background(_ viewBuilder: () -> UIView) -> Self {
        return background(viewBuilder())
    }
    
    @discardableResult @inlinable
    func background(_ view: UIView) -> Self {
        if self.responds(to: Selector(("setBackgroundView:"))) {
            self.perform(Selector(("setBackgroundView:")), with: view, afterDelay: 0)
        } else {
            self.insertSubview(view, at: 0)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        return self
    }
    
    @discardableResult @inlinable
    func backgroundColor(_ viewBuilder: () -> UIView) -> Self {
        return backgroundColor(viewBuilder())
    }
    
    @discardableResult
    func backgroundColor(_ view: UIView) -> Self {
        // 传个渐变View做背景色岂不美哉
        for case let subview as BackgroundContainerView in subviews {
            subview.removeFromSuperview()
        }
        let view = BackgroundContainerView(view)
        view.isHidden = true
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.insertSubview(view, at: 0)
        return self
    }
}

extension UIView {
    internal var screenshot: UIImage? {
        return UIGraphicsImageRenderer(size: layer.frame.size).image { context in
            layer.render(in: context.cgContext)
        }
    }
}

private final class BackgroundContainerView: UIView {
    let view: UIView
    init(_ view: UIView) {
        self.view = view
        super.init(frame: .zero)
        addSubview(view)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        if let superview {
            view.frame = bounds
            if let screenshot = view.screenshot {
                superview.backgroundColor = UIColor(patternImage: screenshot)
            }
        }
    }
}
