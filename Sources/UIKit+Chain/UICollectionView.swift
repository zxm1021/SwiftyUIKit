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

public extension UICollectionView {
    
    @discardableResult @inlinable
    func collectionViewLayout(_ newValue: UICollectionViewLayout) -> Self {
        self.collectionViewLayout = newValue
        return self
    }

    @discardableResult @inlinable
    func dataSource(_ newValue: UICollectionViewDataSource?) -> Self {
        dataSource = newValue
        return self
    }
    
    @discardableResult @inlinable
    func register(_ cellClass: AnyClass) -> Self {
        self.register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
        return self
    }
    
    @inlinable
    func dequeue<T: UICollectionViewCell>(_ cellClass: T.Type, indexPath: IndexPath) -> T {
        self.dequeueReusableCell(withReuseIdentifier: String(describing: cellClass), for: indexPath) as! T
    }
    
    @inlinable
    func registerSupplementaryView<T: UICollectionReusableView>(_ viewClass: T.Type, elementKind: String) -> Self {
        self.register(viewClass,
                      forSupplementaryViewOfKind: elementKind,
                      withReuseIdentifier: String(describing: viewClass))
        return self
    }

    @inlinable
    func dequeSupplementaryView<T: UICollectionReusableView>(_ viewClass: T.Type, elementKind: String, indexPath: IndexPath) -> T {
        dequeueReusableSupplementaryView(ofKind: elementKind,
                                         withReuseIdentifier: String(String(describing: viewClass)),
                                         for: indexPath) as! T
    }
}
