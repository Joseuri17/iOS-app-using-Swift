//
//  SecondViewController.swift
//  Tabview
//
//  Created by TX on 3/18/21.
//  Copyright © 2021 TX. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var TwitterWebView: UIWebView!
    
    
    let GoogleAddress: String = "https://twitter.com/Google"
    let SamsungAddress: String = "https://twitter.com/SamsungMobile"
    let NintendoAddress: String = "https://twitter.com/NintendoAmerica"
    let FordAddress: String = "https://twitter.com/Ford"
    let BankAddress: String = "https://twitter.com/BankofAmerica"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let CompanyView: FirstViewController = self.tabBarController!.viewControllers![0] as! FirstViewController
        
        if CompanyView.GoogleSwitch.isOn
        {
            TwitterWebView.loadRequest(URLRequest(url: URL(string: GoogleAddress)!))
        }
        else if CompanyView.SamsungSwitch.isOn
        {
            TwitterWebView.loadRequest(URLRequest(url: URL(string: SamsungAddress)!))
        }
        else if CompanyView.NintendoSwitch.isOn
        {
            TwitterWebView.loadRequest(URLRequest(url: URL(string: NintendoAddress)!))
        }
        else if CompanyView.FordSwitch.isOn
        {
            TwitterWebView.loadRequest(URLRequest(url: URL(string: FordAddress)!))
        }
        else if CompanyView.BankSwitch.isOn
        {
            TwitterWebView.loadRequest(URLRequest(url: URL(string: BankAddress)!))
        }
        
    }
    
    
}

