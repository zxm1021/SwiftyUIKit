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
    
    private static let TapActionBlockKey0 = "uiview.tap.action.0"
    private static let TapActionBlockKey1 = "uiview.tap.action.1"
    
    @discardableResult
    func onTapGesture(count: Int = 1, perform action: @escaping () -> Void) -> Self {
        associatedDictionary[Self.TapActionBlockKey0] = action
        if count == 1, self is UIControl {
            (self as! UIControl).addTarget(self,
                                           action: #selector(tapAction0),
                                           for: .touchUpInside)
        } else {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction0))
            tapGesture.numberOfTapsRequired = count
            addGestureRecognizer(tapGesture)
        }
        return self
    }
    
    @discardableResult
    func onTapGesture(count: Int = 1, perform action: @escaping (Self) -> Void) -> Self {
        associatedDictionary[Self.TapActionBlockKey1] = action
        if count == 1, self is UIControl {
            (self as! UIControl).addTarget(self,
                                           action: #selector(tapAction1),
                                           for: .touchUpInside)
        } else {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction1))
            tapGesture.numberOfTapsRequired = count
            addGestureRecognizer(tapGesture)
        }
        return self
    }
    
    @objc
    private func tapAction0() {
        (associatedDictionary[Self.TapActionBlockKey0] as? () -> Void)?()
    }
    
    @objc
    private func tapAction1() {
        (associatedDictionary[Self.TapActionBlockKey1] as? (Self) -> Void)?(self as! Self)
    }
}

// MARK: Long Press Gesture
public extension UIView {
    
    private static let LongTapActionBlockKey0 = "uiview.long.tap.action.0"
    private static let LongTapActionBlockKey1 = "uiview.long.tap.action.1"
    
    @discardableResult
    func onLongPressGesture(minimumDuration: Double = 0.5,
                            numberOfTouchesRequired: Int = 1,
                            perform action: @escaping () -> Void) -> Self {
        associatedDictionary[Self.LongTapActionBlockKey0] = action
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(self.longPressAction0(sender:)))
        gesture.minimumPressDuration = minimumDuration
        gesture.numberOfTouchesRequired = numberOfTouchesRequired
        self.addGestureRecognizer(gesture)
        return self
    }
    
    @discardableResult
    func onLongPressGesture(minimumDuration: Double = 0.5,
                            numberOfTouchesRequired: Int = 1,
                            perform action: @escaping (Self) -> Void) -> Self {
        associatedDictionary[Self.LongTapActionBlockKey1] = action
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(self.longPressAction1(sender:)))
        gesture.minimumPressDuration = minimumDuration
        gesture.numberOfTouchesRequired = numberOfTouchesRequired
        self.addGestureRecognizer(gesture)
        return self
    }
    
    @objc
    private func longPressAction0(sender: UIGestureRecognizer) {
        if case .began = sender.state {
            (associatedDictionary[Self.LongTapActionBlockKey0] as? () -> Void)?()
        }
    }
    
    @objc
    private func longPressAction1(sender: UIGestureRecognizer) {
        if case .began = sender.state {
            (associatedDictionary[Self.LongTapActionBlockKey1] as? (Self) -> Void)?(self as! Self)
        }
    }
}
