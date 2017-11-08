//
//  LayoutGuaranteedViewTests.swift
//  LayoutGuaranteedViewTests
//
//  Created by marty-suzuki on 2017/11/08.
//  Copyright © 2017 marty-suzuki. All rights reserved.
//

import XCTest
@testable import LayoutGuaranteedView

class LayoutGuaranteedViewTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUIViewWithFrame() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let holder = ViewHolder<UIView>(frame: frame)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.frame, frame)
    }

    func testUIViewWithView() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let base = UIView(frame: frame)
        let holder = ViewHolder<UIView>(view: base)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view, base)
        XCTAssertEqual(view.frame, frame)
    }
}
