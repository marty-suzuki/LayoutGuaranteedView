//
//  LayoutGuaranteedView.initializer.swift
//  LayoutGuaranteedView
//
//  Created by marty-suzuki on 2017/11/08.
//  Copyright © 2017 marty-suzuki. All rights reserved.
//

import UIKit

// MARK: - Container View
extension LayoutGuaranteedView_ where View: UITableView {
    public convenience init(frame: CGRect, style: UITableViewStyle) {
        let view = View(frame: frame, style: style)
        self.init(_view: view)
    }
}

extension LayoutGuaranteedView_ where View: UICollectionView {
    public convenience init(frame: CGRect, collectionViewLayout: UICollectionViewLayout) {
        let view = View(frame: frame, collectionViewLayout: collectionViewLayout)
        self.init(_view: view)
    }
}

extension LayoutGuaranteedView_ where View: UIStackView {
    public convenience init(arrangedSubviews views: [UIView]) {
        let view = View(arrangedSubviews: views)
        self.init(_view: view)
    }
}

// MARK: - Content Views
extension LayoutGuaranteedView_ where View: UIActivityIndicatorView {
    public convenience init(activityIndicatorStyle style: UIActivityIndicatorViewStyle) {
        let view = View(activityIndicatorStyle: style)
        self.init(_view: view)
    }
}

extension LayoutGuaranteedView_ where View: UIImageView {
    public convenience init(image: UIImage?) {
        let view = View(image: image)
        self.init(_view: view)
    }
    
    public convenience init(image: UIImage?, highlightedImage: UIImage?) {
        let view = View(image: image, highlightedImage: highlightedImage)
        self.init(_view: view)
    }
}

extension LayoutGuaranteedView_ where View: UIProgressView {
    public convenience init(progressViewStyle style: UIProgressViewStyle) {
        let view = View(progressViewStyle: style)
        self.init(_view: view)
    }
}

// MARK: - Controls
extension LayoutGuaranteedView_ where View: UIButton {
    public convenience init(type buttonType: UIButtonType) {
        let view = View(type: buttonType)
        self.init(_view: view)
    }
}

extension LayoutGuaranteedView_ where View: UISegmentedControl {
    public convenience init(items: [Any]?) {
        let view = View(items: items)
        self.init(_view: view)
    }
}

// MARK: - Text Views
extension LayoutGuaranteedView_ where View: UITextView {
    public convenience init(frame: CGRect, textContainer: NSTextContainer?) {
        let view = View(frame: frame, textContainer: textContainer)
        self.init(_view: view)
    }
}

// MARK: - Bars
extension LayoutGuaranteedView_ where View: UISearchBar {
    public convenience init() {
        let view = View()
        self.init(_view: view)
    }
}

// MARK: - Visual Adornments
extension LayoutGuaranteedView_ where View: UIVisualEffectView {
    public convenience init(effect: UIVisualEffect?) {
        let view = View(effect: effect)
        self.init(_view: view)
    }
}
