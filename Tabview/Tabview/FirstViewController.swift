//
//  FirstViewController.swift
//  Tabview
//
//  Created by TX on 3/18/21.
//  Copyright © 2021 TX. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var GoogleSwitch: UISwitch!
    @IBOutlet weak var SamsungSwitch: UISwitch!
    @IBOutlet weak var FordSwitch: UISwitch!
    @IBOutlet weak var NintendoSwitch: UISwitch!
    @IBOutlet weak var BankSwitch: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func GoogleClick(_ sender: UISwitch) {
        if GoogleSwitch.isOn
        {
            SamsungSwitch.isOn = false
            NintendoSwitch.isOn = false
            FordSwitch.isOn = false
            BankSwitch.isOn = false
        }
        else
        {
            GoogleSwitch.isOn = true
        }
    }
    @IBAction func SamsungClick(_ sender: UISwitch) {
        if SamsungSwitch.isOn
        {
            GoogleSwitch.isOn = false
            NintendoSwitch.isOn = false
            FordSwitch.isOn = false
            BankSwitch.isOn = false
        }
        else
        {
            SamsungSwitch.isOn = true
        }
    }
    @IBAction func NintendoClick(_ sender: UISwitch) {
        if NintendoSwitch.isOn
        {
            GoogleSwitch.isOn = false
            SamsungSwitch.isOn = false
            FordSwitch.isOn = false
            BankSwitch.isOn = false
        }
        else
        {
            NintendoSwitch.isOn = true
        }
    }
    @IBAction func FordClick(_ sender: UISwitch) {
        if FordSwitch.isOn
        {
            GoogleSwitch.isOn = false
            SamsungSwitch.isOn = false
            NintendoSwitch.isOn = false
            BankSwitch.isOn = false
        }
        else
        {
            FordSwitch.isOn = true
        }
    }
    @IBAction func BankClick(_ sender: UISwitch) {
        if BankSwitch.isOn
        {
            GoogleSwitch.isOn = false
            SamsungSwitch.isOn = false
            NintendoSwitch.isOn = false
            FordSwitch.isOn = false
        }
        else
        {
            BankSwitch.isOn = true
        }
    }
    
    
    
    
}

