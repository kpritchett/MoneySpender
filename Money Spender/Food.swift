//
//  Food.swift
//  Money Spender
//
//  Created by Student on 12/14/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit
class Food : UIViewController
{
    @IBOutlet weak var fastFoodPrice: UITextField!
    @IBOutlet weak var sitDownPrice: UITextField!
    @IBOutlet weak var groceriesPrice: UITextField!
    @IBOutlet weak var otherPrice: UITextField!
    @IBOutlet weak var fastFoodCounter: UILabel!
    @IBOutlet weak var sitDownCounter: UILabel!
    @IBOutlet weak var groceriesCounter: UILabel!
    @IBOutlet weak var otherCounter: UILabel!
    @IBOutlet weak var currentTotal: UILabel!
    @IBOutlet weak var expenses: UILabel!
    
    
    var money = Double()
    var fastFoodP = Double()
    var sitDownP = Double()
    var groceryP = Double()
    var otherP = Double()
    var foodExpenses = Double()
    var enterExpenses = Double()
    var fastFoodC = 0.0
    var sitDownC = 0.0
    var groceryC = 0.0
    var otherC = 0.0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        currentTotal.text = "$\(money)"
    }
    @IBAction func sitDownTapped(_ sender: Any)
    {
        sitDownC = sitDownC + 1.0
        sitDownP = Double(sitDownPrice.text!)!
        sitDownCounter.text = "\(sitDownC)"
        foodExpenses = foodExpenses + (sitDownP * sitDownC)
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func subSit(_ sender: Any)
    {
        sitDownC = sitDownC - 1.0
        sitDownCounter.text = "\(sitDownC)"
        foodExpenses = foodExpenses - sitDownP
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func FastFoodTapped(_ sender: Any)
    {
        
        fastFoodC = fastFoodC + 1.0
        fastFoodP = Double(fastFoodPrice.text!)!
        fastFoodCounter.text = "\(fastFoodC)"
        foodExpenses = foodExpenses + (fastFoodP * fastFoodC)
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func subFF(_ sender: Any)
    {
        fastFoodC = fastFoodC - 1.0
        fastFoodCounter.text = "\(fastFoodC)"
        foodExpenses = foodExpenses - fastFoodP
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func groceriesTapped(_ sender: Any) {
        groceryC = groceryC + 1.0
        groceryP = Double(groceriesPrice.text!)!
        groceriesCounter.text = "\(groceryC)"
        foodExpenses = foodExpenses + (groceryP * groceryC)
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func subG(_ sender: Any)
    {
        groceryC = groceryC - 1.0
        groceriesCounter.text = "\(groceryC)"
        foodExpenses = foodExpenses - groceryP
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func otherTapped(_ sender: Any)
    {
        otherC = otherC + 1.0
        otherP = Double(otherPrice.text!)!
        otherCounter.text = "\(otherC)"
        foodExpenses = foodExpenses + (otherP * otherC)
        expenses.text = "-$\(foodExpenses)"
    }
    @IBAction func subOther(_ sender: Any)
    {
        otherC = otherC - 1.0
        otherCounter.text = "\(otherC)"
        foodExpenses = foodExpenses - otherP
        expenses.text = "-$\(foodExpenses)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        money = money - foodExpenses
        let util = segue.destination as! UtilityVC
        util.money = self.money
        util.enterExpenses = self.enterExpenses
        util.foodExpenses = self.foodExpenses
    }
}
