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

public extension UITableView {
    @discardableResult @inlinable
    func dataSource(_ newValue: UITableViewDataSource?) -> Self {
        dataSource = newValue
        return self
    }

    @discardableResult @inlinable
    func prefetchDataSource(_ newValue: UITableViewDataSourcePrefetching?) -> Self {
        prefetchDataSource = newValue
        return self
    }

    @discardableResult @inlinable
    func dragDelegate(_ newValue: UITableViewDragDelegate?) -> Self {
        dragDelegate = newValue
        return self
    }

    @discardableResult @inlinable
    func dropDelegate(_ newValue: UITableViewDropDelegate?) -> Self {
        dropDelegate = newValue
        return self
    }

    @discardableResult @inlinable
    func rowHeight(_ newValue: CGFloat) -> Self {
        rowHeight = newValue
        return self
    }

    @discardableResult @inlinable
    func sectionHeaderHeight(_ newValue: CGFloat) -> Self {
        sectionHeaderHeight = newValue
        return self
    }

    @discardableResult @inlinable
    func sectionFooterHeight(_ newValue: CGFloat) -> Self {
        sectionFooterHeight = newValue
        return self
    }

    @discardableResult @inlinable
    func estimatedRowHeight(_ newValue: CGFloat) -> Self {
        estimatedRowHeight = newValue
        return self
    }

    @discardableResult @inlinable
    func estimatedSectionHeaderHeight(_ newValue: CGFloat) -> Self {
        estimatedSectionHeaderHeight = newValue
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult @inlinable
    func estimatedSectionFooterHeight(_ newValue: CGFloat) -> Self {
        estimatedSectionFooterHeight = newValue
        return self
    }

    @discardableResult @inlinable
    func separatorInset(_ newValue: UIEdgeInsets) -> Self {
        separatorInset = newValue
        return self
    }

    @discardableResult @inlinable
    func separatorInsetReference(_ newValue: UITableView.SeparatorInsetReference) -> Self {
        separatorInsetReference = newValue
        return self
    }

    @discardableResult @inlinable
    func backgroundView(_ newValue: UIView?) -> Self {
        backgroundView = newValue
        return self
    }

    @discardableResult @inlinable
    func isEditing(_ newValue: Bool) -> Self {
        isEditing = newValue
        return self
    }

    @discardableResult @inlinable
    func allowsSelection(_ newValue: Bool) -> Self {
        allowsSelection = newValue
        return self
    }

    @discardableResult @inlinable
    func allowsSelectionDuringEditing(_ newValue: Bool) -> Self {
        allowsSelectionDuringEditing = newValue
        return self
    }

    @discardableResult @inlinable
    func allowsMultipleSelection(_ newValue: Bool) -> Self {
        allowsMultipleSelection = newValue
        return self
    }

    @discardableResult @inlinable
    func allowsMultipleSelectionDuringEditing(_ newValue: Bool) -> Self {
        allowsMultipleSelectionDuringEditing = newValue
        return self
    }

    @discardableResult @inlinable
    func sectionIndexMinimumDisplayRowCount(_ newValue: Int) -> Self {
        sectionIndexMinimumDisplayRowCount = newValue
        return self
    }

    @discardableResult @inlinable
    func sectionIndexColor(_ newValue: UIColor?) -> Self {
        sectionIndexColor = newValue
        return self
    }

    @discardableResult @inlinable
    func sectionIndexBackgroundColor(_ newValue: UIColor?) -> Self {
        sectionIndexBackgroundColor = newValue
        return self
    }

    @discardableResult @inlinable
    func sectionIndexTrackingBackgroundColor(_ newValue: UIColor?) -> Self {
        sectionIndexTrackingBackgroundColor = newValue
        return self
    }

    @discardableResult @inlinable
    func separatorStyle(_ newValue: UITableViewCell.SeparatorStyle) -> Self {
        separatorStyle = newValue
        return self
    }

    @discardableResult @inlinable
    func separatorColor(_ newValue: UIColor?) -> Self {
        separatorColor = newValue
        return self
    }

    @discardableResult @inlinable
    func separatorEffect(_ newValue: UIVisualEffect?) -> Self {
        separatorEffect = newValue
        return self
    }

    @discardableResult @inlinable
    func cellLayoutMarginsFollowReadableWidth(_ newValue: Bool) -> Self {
        cellLayoutMarginsFollowReadableWidth = newValue
        return self
    }

    @discardableResult @inlinable
    func insetsContentViewsToSafeArea(_ newValue: Bool) -> Self {
        insetsContentViewsToSafeArea = newValue
        return self
    }

    @discardableResult @inlinable
    func tableHeaderView(_ newValue: UIView?) -> Self {
        tableHeaderView = newValue
        return self
    }

    @discardableResult @inlinable
    func tableFooterView(_ newValue: UIView?) -> Self {
        tableFooterView = newValue
        return self
    }

    @discardableResult @inlinable
    func remembersLastFocusedIndexPath(_ newValue: Bool) -> Self {
        remembersLastFocusedIndexPath = newValue
        return self
    }

    @discardableResult @inlinable
    func selectionFollowsFocus(_ newValue: Bool) -> Self {
        selectionFollowsFocus = newValue
        return self
    }

    @discardableResult @inlinable
    func dragInteractionEnabled(_ newValue: Bool) -> Self {
        dragInteractionEnabled = newValue
        return self
    }
    
    @discardableResult @inlinable
    func register(_ cellClass: AnyClass) -> Self {
        self.register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
        return self
    }
    
    @discardableResult @inlinable
    func dequeue<T: UITableViewCell>(_ cellClass: T.Type) -> T? {
        self.dequeueReusableCell(withIdentifier: String(describing: cellClass)) as? T
    }
    
    @discardableResult @inlinable
    func dequeue<T: UITableViewCell>(_ cellClass: T.Type, indexPath: IndexPath) -> T {
        self.dequeueReusableCell(withIdentifier: String(describing: cellClass), for: indexPath) as! T
    }
}
