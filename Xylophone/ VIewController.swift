//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

/*
 to do:
 
 * make it play all when trailing/swiping finger across
 * allow it to save tunes
 * allow it to send tunes to people
 
 */

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        let key = sender.tag
        
        let note = "note" + String(key)
        
        playSound(soundName: note)
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        
        do {
            try player = AVAudioPlayer(contentsOf: url!)
        } catch let error {
            print(error.localizedDescription)
        }
        
        player.play()
    }

}

