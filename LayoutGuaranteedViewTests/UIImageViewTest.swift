//
//  UIImageViewTest.swift
//  LayoutGuaranteedViewTests
//
//  Created by marty-suzuki on 2017/11/09.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import XCTest
@testable import LayoutGuaranteedView

class UIImageViewTest: XCTestCase {
    func testFrame() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let holder = ViewHolder<UIImageView>(frame: frame)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.frame, frame)
    }
    
    func testView() {
        let superview = UIView()
        let frame = CGRect(x: 20, y: 30, width: 100, height: 50)
        let base = UIImageView(frame: frame)
        let holder = ViewHolder<UIImageView>(view: base)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view, base)
        XCTAssertEqual(view.frame, frame)
    }
    
    func testImage() {
        let superview = UIView()
        let image = UIImage()
        let holder = ViewHolder<UIImageView>(image: image)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.image, image)
    }
    
    func testImageAndHighlightedImage() {
        let superview = UIView()
        let image = UIImage()
        let highlightedImage = UIImage()
        let holder = ViewHolder<UIImageView>(image: image, highlightedImage: highlightedImage)
        let view = holder.guaranteeLayout(addingTo: superview).view
        XCTAssertEqual(view.image, image)
        XCTAssertEqual(view.highlightedImage, highlightedImage)
    }
}

