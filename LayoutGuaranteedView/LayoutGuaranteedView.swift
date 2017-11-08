//
//  LayoutGuaranteedView.swift
//  LayoutGuaranteedView
//
//  Created by marty-suzuki on 2017/11/08.
//  Copyright © 2017 marty-suzuki. All rights reserved.
//

import UIKit

public protocol LayoutStatus {}
public enum LayoutApplied: LayoutStatus {}
public enum LayouNotApplied: LayoutStatus {}

public typealias ViewHolder<T: UIView> = LayoutGuaranteedView_<LayouNotApplied, T>

public final class LayoutGuaranteedView_<Layout: LayoutStatus, View: UIView> {
    private let _view: View

    init(_view: View) {
        self._view = _view
    }
}

extension LayoutGuaranteedView_ where Layout == LayouNotApplied {
    public convenience init(frame: CGRect) {
        let view = View(frame: frame)
        self.init(_view: view)
    }

    public convenience init(view: View) {
        self.init(_view: view)
    }

    public func guaranteeLayout(addingTo superview: UIView, layoutHandler: (View) -> [NSLayoutConstraint] = { _ in [] }) -> LayoutGuaranteedView_<LayoutApplied, View> {
        superview.addSubview(_view)
        let constraints = layoutHandler(_view)
        if !constraints.isEmpty {
            _view.translatesAutoresizingMaskIntoConstraints = false
            superview.addConstraints(constraints)
        }
        return .init(_view: _view)
    }
}

extension LayoutGuaranteedView_ where Layout == LayoutApplied {
    public var view: View {
        return _view
    }
}
