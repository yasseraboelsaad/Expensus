//
//  ExpenseItemCell.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 8/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class ExpenseItemCell: UITableViewCell {

    @IBOutlet var expenseNameLabel: UILabel!
    @IBOutlet var expenseDateLabel: UILabel!
    @IBOutlet var expenseIcon: UIImageView!
    @IBOutlet var expenseCostLabel: UILabel!
    @IBOutlet var expenseTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        expenseCostLabel.text = ""
        expenseTitleLabel.text = ""
    }

}
