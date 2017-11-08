//
//  UICollectionViewTests.swift
//  LayoutGuaranteedViewTests
//
//  Created by marty-suzuki on 2017/11/09.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import XCTest
@testable import LayoutGuaranteedView

class UICollectionViewTests: XCTestCase {
    func testView() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let base = UICollectionView(frame: frame, collectionViewLayout: UICollectionViewFlowLayout())
        let holder = ViewHolder<UICollectionView>(view: base)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view, base)
        XCTAssertEqual(view.frame, frame)
    }
    
    func testCollectionViewLayout() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let collectionViewLayout = UICollectionViewFlowLayout()
        let holder = ViewHolder<UICollectionView>(frame: frame, collectionViewLayout: collectionViewLayout)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.collectionViewLayout, collectionViewLayout)
        XCTAssertEqual(view.frame, frame)
    }
}
