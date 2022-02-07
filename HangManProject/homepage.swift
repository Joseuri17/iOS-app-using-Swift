//
//  homepage.swift
//  
//
//  Created by TX on 3/29/21.
//

import UIKit
import AVFoundation
class homepage: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    
    
    @IBOutlet weak var userLabel: UILabel!
    
    
    var musicEffect = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let musicFile = Bundle.main.path(forResource: "song1", ofType: ".mp3")
        
        do {
            
        try musicEffect = AVAudioPlayer(contentsOf: URL(fileURLWithPath: musicFile!))
        }
            
        catch {
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func enter(_ sender: Any) {
        userLabel.text = "User Name: \(userName.text!)"
    }


    
    @IBAction func play(_ sender: Any) {
        musicEffect.play()
    }
    
    
    @IBAction func stop(_ sender: Any) {
        musicEffect.stop()
    }
}

