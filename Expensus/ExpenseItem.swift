//
//  ExpenseItem.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 8/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import Foundation
import UIKit


class ExpenseItem: NSObject {
    var expenseTitle: String = ""
    var expenseCost: Int = 0
    var expenseCurrency: String = ""
    var expenseDate: String = ""
    var expenseIcon:UIImage = #imageLiteral(resourceName: "logo")
    var expenseName: String = ""

    override init() {
        super.init()
    }
}
