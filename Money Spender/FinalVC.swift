//
//  FinalVC.swift
//  Money Spender
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit
class FinalVC : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var totalCost: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    var money = Double()
    var foodExpenses = Double()
    var enterExpenses = Double()
    var utilExpenses = Double()
    var expense = ["Food", "Entertainment", "Utilities"] //makes an array of spending types ``````11``
    var groupExpenses = [Double]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        groupExpenses = [foodExpenses, enterExpenses, utilExpenses]
        totalCost.text = "$\(money)"
    }
    //creates table view containing total expenses
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: AnyObject = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath as IndexPath)
        cell.textLabel!?.text = expense[indexPath.row]
        cell.detailTextLabel??.text = "-$\(groupExpenses[indexPath.row])"
        return cell as! UITableViewCell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return expense.count
    }
}
