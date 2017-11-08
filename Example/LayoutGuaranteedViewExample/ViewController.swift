//
//  ViewController.swift
//  LayoutGuaranteedViewExample
//
//  Created by marty-suzuki on 2017/11/08.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import UIKit
import LayoutGuaranteedView

class ViewController: UIViewController {
    let viewHolder = ViewHolder<UITableView>(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()

        let tableview = viewHolder.guaranteeLayout(addingTo: view) { tableView in
            return [
                tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ]
        }.view

        tableview.delegate = self
    }
}

extension ViewController: UITableViewDelegate {}
