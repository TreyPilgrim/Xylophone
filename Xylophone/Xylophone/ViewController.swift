//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var player: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    
    @IBAction func keyPressed(_ sender: UIButton)
    {
        playSound(passedVar: sender.currentTitle ?? "T")
        
    }
    
    func playSound(passedVar: String)
    {

        let url: URL?
        switch passedVar
        {
        case "C":
            url = Bundle.main.url(forResource: "C", withExtension: "wav")
            
        case "D":
            url = Bundle.main.url(forResource: "D", withExtension: "wav")
            
        case "E":
            url = Bundle.main.url(forResource: "E", withExtension: "wav")
            
        case "F":
            url = Bundle.main.url(forResource: "F", withExtension: "wav")
            
        case "G":
            url = Bundle.main.url(forResource: "G", withExtension: "wav")
            
        case "A":
            url = Bundle.main.url(forResource: "A", withExtension: "wav")
            
        case "B":
            url = Bundle.main.url(forResource: "B", withExtension: "wav")
        default:
            fatalError("Unhandled case: \(passedVar)")
        }
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

