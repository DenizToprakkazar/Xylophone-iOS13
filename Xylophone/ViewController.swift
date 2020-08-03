//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //below written by DenizToprakkazar
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
       
        playSound(buttonTitle: sender.currentTitle!)
    }
    
    func playSound(buttonTitle: String){
        let url = Bundle.main.url(forResource: buttonTitle, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()

}

}
