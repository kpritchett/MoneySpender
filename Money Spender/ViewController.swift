//
//  ViewController.swift
//  Money Spender
//
//  Created by Student on 12/12/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var moneyInput: UITextField!
    @IBOutlet weak var startingMoney: UILabel!
    var money = Double()
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    //segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        money = Double(moneyInput.text!)!
        let enter = segue.destination as! EntertainVC
        enter.money = self.money
    }

}

