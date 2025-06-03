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

public extension UIDatePicker {
    
    @discardableResult @inlinable
    func calendar(_ newValue: Calendar!) -> Self {
        self.calendar = newValue
        return self
    }
    
    @discardableResult @inlinable
    func date(_ newValue: Date) -> Self {
        self.date = newValue
        return self
    }
    
    @discardableResult @inlinable
    func locale(_ newValue: Locale?) -> Self {
        self.locale = newValue
        return self
    }
    
    @discardableResult @inlinable
    func timeZone(_ newValue: TimeZone?) -> Self {
        self.timeZone = newValue
        return self
    }
    
    @discardableResult @inlinable
    func datePickerMode(_ newValue: UIDatePicker.Mode) -> Self {
        self.datePickerMode = newValue
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult @inlinable
    func preferredDatePickerStyle(_ newValue: UIDatePickerStyle) -> Self {
        self.preferredDatePickerStyle = newValue
        return self
    }
    
    @discardableResult @inlinable
    func maximumDate(_ newValue: Date?) -> Self {
        self.maximumDate = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minimumDate(_ newValue: Date?) -> Self {
        self.minimumDate = newValue
        return self
    }
    
    @discardableResult @inlinable
    func minuteInterval(_ newValue: Int) -> Self {
        self.minuteInterval = newValue
        return self
    }
    
    @discardableResult @inlinable
    func countDownDuration(_ newValue: TimeInterval) -> Self {
        self.countDownDuration = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func roundsToMinuteInterval(_ newValue: Bool) -> Self {
        self.roundsToMinuteInterval = newValue
        return self
    }
    
    @discardableResult @inlinable
    func date(_ date: Date, animated: Bool) -> Self {
        self.setDate(date, animated: animated)
        return self
    }
}
