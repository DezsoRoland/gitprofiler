//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Roland on 12/02/2021.
//  Copyright © 2021 Roland. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
