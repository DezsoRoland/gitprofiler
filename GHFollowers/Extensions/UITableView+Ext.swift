//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Roland on 12/02/2021.
//  Copyright © 2021 Roland. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
