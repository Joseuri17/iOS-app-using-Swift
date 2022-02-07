//
//  ThirdViewController.swift
//  Tabview
//
//  Created by TX on 3/18/21.
//  Copyright © 2021 TX. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var FaceBookWebView: UIWebView!
    
    
    let GoogleAddress: String = "https://www.facebook.com/Google"
    let SamsungAddress: String = "https://www.facebook.com/SamsungUS"
    let NintendoAddress: String = "https://www.facebook.com/Nintendo"
    let FordAddress: String = "https://www.facebook.com/ford"
    let BankAddress: String = "https://www.facebook.com/BankofAmerica"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let CompanyView: FirstViewController = self.tabBarController!.viewControllers![0] as! FirstViewController
        
        if CompanyView.GoogleSwitch.isOn
        {
            FaceBookWebView.loadRequest(URLRequest(url: URL(string: GoogleAddress)!))
        }
        else if CompanyView.SamsungSwitch.isOn
        {
            FaceBookWebView.loadRequest(URLRequest(url: URL(string: SamsungAddress)!))
        }
        else if CompanyView.NintendoSwitch.isOn
        {
            FaceBookWebView.loadRequest(URLRequest(url: URL(string: NintendoAddress)!))
        }
        else if CompanyView.FordSwitch.isOn
        {
            FaceBookWebView.loadRequest(URLRequest(url: URL(string: FordAddress)!))
        }
        else if CompanyView.BankSwitch.isOn
        {
            FaceBookWebView.loadRequest(URLRequest(url: URL(string: BankAddress)!))
        }
        
    }
    
    
}
