//
//  ViewController.swift
//  HerhalingsOefIOS
//
//  Created by mobapp06 on 24/01/2020.
//  Copyright © 2020 mobapp06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTF: UITextField!
    
    @IBOutlet weak var btw: UISegmentedControl!
  
    @IBOutlet weak var resultaatLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func berekenBTW() {
        if var price = Double.init(priceTF.text!){
            switch btw.selectedSegmentIndex{
            case 0: price *= 1.06
            case 1: price *= 1.12
            case 2: price *= 1.21
            default: price = 0
            }
            resultaatLBL.text = String.init(format: "€%.2f", price)
            }
            }
    
    
}


