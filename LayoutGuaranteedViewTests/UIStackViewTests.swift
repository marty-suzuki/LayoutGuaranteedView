//
//  UIStackViewTests.swift
//  LayoutGuaranteedViewTests
//
//  Created by marty-suzuki on 2017/11/09.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import XCTest
@testable import LayoutGuaranteedView

class UIStackViewTests: XCTestCase {
    func testFrame() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let holder = ViewHolder<UIStackView>(frame: frame)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.frame, frame)
    }
    
    func testView() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let base = UIStackView(frame: frame)
        let holder = ViewHolder<UIStackView>(view: base)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view, base)
        XCTAssertEqual(view.frame, frame)
    }
    
    func testArrangedSubviews() {
        let superview = UIView()
        let subview = UIView()
        let holder = ViewHolder<UIStackView>(arrangedSubviews: [subview])
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.arrangedSubviews.first, subview)
    }
}
