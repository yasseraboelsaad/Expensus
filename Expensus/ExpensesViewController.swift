//
//  FirstViewController.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 7/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableViewDelegate: UITableView!
    var expenses: [ExpenseItem]!
    
    @IBOutlet var backgroundImage: UIImageView!
    required init?(coder aDecoder: NSCoder) {
        expenses = []
                
        let item = ExpenseItem()
        item.expenseTitle = "Stuff"
        item.expenseCost = 12
        item.expenseCurrency = "$"
        item.expenseDate = "13.02.2017"
        item.expenseName = "Hazem Hazem"
        expenses.append(item)
        
        let item2 = ExpenseItem()
        item2.expenseTitle = "things"
        item2.expenseCost = 20
        item2.expenseCurrency = "$"
        item2.expenseDate = "26.11.2017"
        item2.expenseName = "Bassiony Bassiony"
        expenses.append(item2)
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImage.addSubview(blurEffectView)
        
        self.tableViewDelegate.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableViewDelegate.delegate = self
        tableViewDelegate.delegate = self
        tableViewDelegate.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseItem", for: indexPath) as! ExpenseItemCell
        cell.expenseTitleLabel.text = expenses[indexPath.row].expenseTitle
        cell.expenseCostLabel.text = expenses[indexPath.row].expenseCurrency + String(expenses[indexPath.row].expenseCost)
        cell.expenseNameLabel.text = expenses[indexPath.row].expenseName
        cell.expenseDateLabel.text = expenses[indexPath.row].expenseDate
        cell.expenseIcon.image = expenses[indexPath.row].expenseIcon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

