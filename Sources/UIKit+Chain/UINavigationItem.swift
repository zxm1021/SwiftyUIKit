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

public extension UINavigationItem {
    
    @discardableResult @inlinable
    func title(_ newValue: String?) -> Self {
        self.title = newValue
        return self
    }
    
    @discardableResult @inlinable
    func largeTitleDisplayMode(_ newValue: UINavigationItem.LargeTitleDisplayMode) -> Self {
        self.largeTitleDisplayMode = newValue
        return self
    }
    
    @discardableResult @inlinable
    func backBarButtonItem(_ newValue: UIBarButtonItem?) -> Self {
        self.backBarButtonItem = newValue
        return self
    }
    
    @discardableResult @inlinable
    func backButtonTitle(_ newValue: String?) -> Self {
        self.backButtonTitle = newValue
        return self
    }
    
    @discardableResult @inlinable
    func backButtonDisplayMode(_ newValue: UINavigationItem.BackButtonDisplayMode) -> Self {
        self.backButtonDisplayMode = newValue
        return self
    }
    
    @discardableResult @inlinable
    func hidesBackButton(_ newValue: Bool) -> Self {
        self.hidesBackButton = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func backAction(_ newValue: UIAction?) -> Self {
        self.backAction = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func style(_ newValue: UINavigationItem.ItemStyle) -> Self {
        self.style = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func centerItemGroups(_ newValue: [UIBarButtonItemGroup]) -> Self {
        self.centerItemGroups = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func leadingItemGroups(_ newValue: [UIBarButtonItemGroup]) -> Self {
        self.leadingItemGroups = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func trailingItemGroups(_ newValue: [UIBarButtonItemGroup]) -> Self {
        self.trailingItemGroups = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func pinnedTrailingGroup(_ newValue: UIBarButtonItemGroup?) -> Self {
        self.pinnedTrailingGroup = newValue
        return self
    }
    
    @discardableResult @inlinable
    func titleView(_ newValue: UIView?) -> Self {
        self.titleView = newValue
        return self
    }
    
    @discardableResult @inlinable
    func leftBarButtonItems(_ newValue: [UIBarButtonItem]?) -> Self {
        self.leftBarButtonItems = newValue
        return self
    }
    
    @discardableResult @inlinable
    func leftBarButtonItem(_ newValue: UIBarButtonItem?) -> Self {
        self.leftBarButtonItem = newValue
        return self
    }
    
    @discardableResult @inlinable
    func rightBarButtonItems(_ newValue: [UIBarButtonItem]?) -> Self {
        self.rightBarButtonItems = newValue
        return self
    }
    
    @discardableResult @inlinable
    func rightBarButtonItem(_ newValue: UIBarButtonItem?) -> Self {
        self.rightBarButtonItem = newValue
        return self
    }
    
    @discardableResult @inlinable
    func prompt(_ newValue: String?) -> Self {
        self.prompt = newValue
        return self
    }
    
    @discardableResult @inlinable
    func leftItemsSupplementBackButton(_ newValue: Bool) -> Self {
        self.leftItemsSupplementBackButton = newValue
        return self
    }
    
    @discardableResult @inlinable
    func standardAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.standardAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func compactAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.compactAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func scrollEdgeAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.scrollEdgeAppearance = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult @inlinable
    func compactScrollEdgeAppearance(_ newValue: UINavigationBarAppearance?) -> Self {
        self.compactScrollEdgeAppearance = newValue
        return self
    }
    
    @discardableResult @inlinable
    func searchController(_ newValue: UISearchController?) -> Self {
        self.searchController = newValue
        return self
    }
    
    @discardableResult @inlinable
    func hidesSearchBarWhenScrolling(_ newValue: Bool) -> Self {
        self.hidesSearchBarWhenScrolling = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func preferredSearchBarPlacement(_ newValue: UINavigationItem.SearchBarPlacement) -> Self {
        self.preferredSearchBarPlacement = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func customizationIdentifier(_ newValue: String?) -> Self {
        self.customizationIdentifier = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func additionalOverflowItems(_ newValue: UIDeferredMenuElement?) -> Self {
        self.additionalOverflowItems = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func titleMenuProvider(_ newValue: (([UIMenuElement]) -> UIMenu?)?) -> Self {
        self.titleMenuProvider = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func documentProperties(_ newValue: UIDocumentProperties?) -> Self {
        self.documentProperties = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult @inlinable
    func renameDelegate(_ newValue: UINavigationItemRenameDelegate?) -> Self {
        self.renameDelegate = newValue
        return self
    }
    
    @discardableResult @inlinable
    func hidesBackButton(_ newValue: Bool, animated: Bool) -> Self {
        self.setHidesBackButton(newValue, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func leftBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool) -> Self {
        self.setLeftBarButtonItems(items, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func leftBarButton(_ item: UIBarButtonItem?, animated: Bool) -> Self {
        self.setLeftBarButton(item, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func rightBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool) -> Self {
        self.setRightBarButtonItems(items, animated: animated)
        return self
    }
    
    @discardableResult @inlinable
    func rightBarButton(_ item: UIBarButtonItem?, animated: Bool) -> Self {
        self.setRightBarButton(item, animated: animated)
        return self
    }
}
