//
//  Homepage.swift
//  HangManProject
//
//  Created by TX on 3/29/21.
//  Copyright © 2021 Jose Cruz. All rights reserved.
//

import UIKit
import AVFoundation
class homepage: UIViewController {
    
    var musicEffect: AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let musicFile = bundle.main.path(forResource:"TonyZ - Road So Far (Gaming No Copyright Music) NCS Gaming Music", ofType: ".mp3")
        
        do {
            try musicEffect = AVAudioPlayer(contentsOf:(fileURLWithPath: musicFile!))
        }
        catch{
            print(error)
        }
        
        
        
    }
   
    
    
    
    
    
}


