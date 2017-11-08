//
//  UIProgressViewTests.swift
//  LayoutGuaranteedViewTests
//
//  Created by marty-suzuki on 2017/11/09.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import XCTest
@testable import LayoutGuaranteedView

class UIProgressViewTests: XCTestCase {
    func testFrame() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 2)
        let holder = ViewHolder<UIProgressView>(frame: frame)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.frame, frame)
    }
    
    func testView() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 2)
        let base = UIProgressView(frame: frame)
        let holder = ViewHolder<UIProgressView>(view: base)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view, base)
        XCTAssertEqual(view.frame, frame)
    }
    
    func testProgressViewStyle() {
        let superview = UIView()
        let holder = ViewHolder<UIProgressView>(progressViewStyle: .bar)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.progressViewStyle, .bar)
    }
}
