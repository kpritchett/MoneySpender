//
//  EntertainVC.swift
//  Money Spender
//
//  Created by Student on 12/13/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class EntertainVC : UIViewController
{
    @IBOutlet weak var movieCounter: UILabel!
    @IBOutlet weak var gameCounter: UILabel!
    @IBOutlet weak var ticketCounter: UILabel!
    @IBOutlet weak var otherCounter: UILabel!
    @IBOutlet weak var expenses: UILabel!
    @IBOutlet weak var moviePrice: UITextField!
    @IBOutlet weak var gamePrice: UITextField!
    @IBOutlet weak var ticketPrice: UITextField!
    @IBOutlet weak var otherPrice: UITextField!
    @IBOutlet weak var currentTotal: UILabel!
    
    var money = Double()
    var movieP = Double()
    var gameP = Double()
    var ticketP = Double()
    var otherP = Double()
    var enterExpenses = Double()
    var gameC = 0.0
    var movieC = 0.0
    var ticketC = 0.0
    var otherC = 0.0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        currentTotal.text = "$\(money)"
    }
    //adds 1 movie viewing to the movie counter
    @IBAction func movieTaped(_ sender: Any)
    {
        movieC = movieC + 1.0
        movieP = Double(moviePrice.text!)!
        movieCounter.text = "\(movieC)"
        enterExpenses = enterExpenses + (movieP * movieC)
        expenses.text = "-$\(enterExpenses)"
    }
    //subtracts 1 movie from the movie counter
    @IBAction func subMovie(_ sender: Any)
    {
        movieC = movieC - 1.0
        movieCounter.text = "\(movieC)"
        enterExpenses = enterExpenses - movieP
        expenses.text = "-$\(enterExpenses)"
    }
    @IBAction func gameTapped(_ sender: Any)
    {
        gameC = gameC + 1.0
        gameP = Double(gamePrice.text!)!
        gameCounter.text = "\(gameC)"
        enterExpenses = enterExpenses + (gameP * gameC)
        expenses.text = "-$\(enterExpenses)"
    }
    @IBAction func subGame(_ sender: Any)
    {
        gameC = gameC - 1.0
        gameCounter.text = "\(gameC)"
        enterExpenses = enterExpenses - gameP
        expenses.text = "-$\(enterExpenses)"
    }
    
    @IBAction func ticketTapped(_ sender: Any)
    {
        ticketC = ticketC + 1.0
        ticketP = Double(ticketPrice.text!)!
        ticketCounter.text = "\(ticketC)"
        enterExpenses = enterExpenses + (ticketP * ticketC)
        expenses.text = "-$\(enterExpenses)"
    }
    
    @IBAction func subTick(_ sender: Any)
    {
        ticketC = ticketC - 1.0
        ticketCounter.text = "\(ticketC)"
        enterExpenses = enterExpenses - ticketP
        expenses.text = "-$\(enterExpenses)"
    }
    @IBAction func otherTapped(_ sender: Any)
    {
        otherP = Double(otherPrice.text!)!
        otherCounter.text = "\(otherC)"
        enterExpenses = enterExpenses + (otherP * otherC)
        expenses.text = "-$\(enterExpenses)"
    }
    @IBAction func subOther(_ sender: Any)
    {
        otherC = otherC - 1.0
        otherCounter.text = "\(otherCounter)"
        enterExpenses = enterExpenses - otherP
        expenses.text = "-$\(enterExpenses)"
    }
    
    //segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        money = money - enterExpenses
        let food = segue.destination as! Food
        food.money = self.money
        food.enterExpenses = self.enterExpenses
    }
}
