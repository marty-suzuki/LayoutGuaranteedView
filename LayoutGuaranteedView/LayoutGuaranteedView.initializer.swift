//
//  LayoutGuaranteedView.initializer.swift
//  LayoutGuaranteedView
//
//  Created by marty-suzuki on 2017/11/08.
//  Copyright © 2017 marty-suzuki. All rights reserved.
//

import UIKit

extension LayoutGuaranteedView_ where View: UITableView {
    public convenience init(frame: CGRect, style: UITableViewStyle) {
        let tableView = View(frame: frame, style: style)
        self.init(_view: tableView)
    }
}

extension LayoutGuaranteedView_ where View: UICollectionView {
    public convenience init(frame: CGRect, collectionViewLayout: UICollectionViewLayout) {
        let collectionView = View(frame: frame, collectionViewLayout: collectionViewLayout)
        self.init(_view: collectionView)
    }
}
