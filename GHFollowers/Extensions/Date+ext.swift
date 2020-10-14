//
//  Date+ext.swift
//  GHFollowers
//
//  Created by Roland on 14/10/2020.
//  Copyright © 2020 Roland. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
