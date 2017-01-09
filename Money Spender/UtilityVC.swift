//
//  UtilityVC.swift
//  Money Spender
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit
class UtilityVC : UIViewController
{
    @IBOutlet weak var currentTotal: UILabel!
    @IBOutlet weak var gasPrice: UITextField!
    @IBOutlet weak var electricPrice: UITextField!
    @IBOutlet weak var heatPrice: UITextField!
    @IBOutlet weak var otherPrice: UITextField!
    @IBOutlet weak var expenses: UILabel!
    @IBOutlet weak var gasCounter: UILabel!
    @IBOutlet weak var electricCounter: UILabel!
    @IBOutlet weak var heatCounter: UILabel!
    @IBOutlet weak var otherCounter: UILabel!
    
    var money = Double()
    var gasP = Double()
    var electricP = Double()
    var heatP = Double()
    var otherP = Double()
    var foodExpenses = Double()
    var enterExpenses = Double()
    var utilExpenses = Double()
    var powerC = 0.0
    var heatC = 0.0
    var gasC = 0.0
    var otherC = 0.0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        currentTotal.text = "$\(money)"
    }

    @IBAction func gasTapped(_ sender: Any)
    {
        gasC = gasC + 1.0
        gasP = Double(gasPrice.text!)!
        gasCounter.text = "\(gasC)"
        utilExpenses = utilExpenses + (gasP * gasC)
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func subGas(_ sender: Any) {
        gasC = gasC - 1.0
        gasCounter.text = "\(gasC)"
        utilExpenses = utilExpenses - gasP
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func powerTapped(_ sender: Any)
    {
        powerC = powerC + 1.0
        electricP = Double(electricPrice.text!)!
        electricCounter.text = "\(powerC)"
        utilExpenses = utilExpenses + (electricP * powerC)
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func subPower(_ sender: Any) {
        powerC = powerC - 1.0
        electricCounter.text = "\(powerC)"
        utilExpenses = utilExpenses - electricP
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func heatTapped(_ sender: Any)
    {
        heatC = heatC + 1.0
        heatCounter.text = "\(heatC)"
        utilExpenses = utilExpenses + (heatP * heatC)
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func subHeat(_ sender: Any) {
        heatC = heatC - 1.0
        heatCounter.text = "\(heatC)"
        utilExpenses = utilExpenses -  heatP
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func otherTapped(_ sender: Any)
    {
        otherC = otherC + 1.0
        otherP = Double(otherPrice.text!)!
        otherCounter.text = "\(otherC)"
        utilExpenses = utilExpenses + (otherP * otherC)
        expenses.text = "-$\(utilExpenses)"
    }
    @IBAction func subOther(_ sender: Any)
    {
        otherC = otherC - 1.0
        otherCounter.text = "\(otherC)"
        utilExpenses = utilExpenses - otherP
        expenses.text = "-$\(utilExpenses)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        money = money - utilExpenses
        let final = segue.destination as! FinalVC
        final.money = self.money
        final.enterExpenses = self.enterExpenses
        final.foodExpenses = self.foodExpenses
        final.utilExpenses = self.utilExpenses
    }
    
    
    
}
