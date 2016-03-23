//
//  ViewController.swift
//  Agite Antes de Ouvir!
//
//  Created by Fernando Augusto de Marins on 17/02/16.
//  Copyright © 2016 Fernando Augusto de Marins. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var sounds = ["horse1", "horse2", "horse3", "horse4", "horse5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.subtype == UIEventSubtype.MotionShake {
            
            let randomNumber = Int(arc4random_uniform(UInt32(sounds.count)))
            
            let audioPath = NSBundle.mainBundle().pathForResource(sounds[randomNumber], ofType: "mp3")
            
            do {
                try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!))
                player.play()
            } catch {
                
            }
        }
    }

}

