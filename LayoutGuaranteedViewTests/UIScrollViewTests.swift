//
//  UIScrollViewTests.swift
//  LayoutGuaranteedViewTests
//
//  Created by marty-suzuki on 2017/11/09.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import XCTest
@testable import LayoutGuaranteedView

class UIScrollViewTests: XCTestCase {
    func testFrame() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let holder = ViewHolder<UIScrollView>(frame: frame)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.frame, frame)
    }
    
    func testView() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let base = UIScrollView(frame: frame)
        let holder = ViewHolder<UIScrollView>(view: base)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view, base)
        XCTAssertEqual(view.frame, frame)
    }
}
