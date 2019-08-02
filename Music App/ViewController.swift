//
//  ViewController.swift
//  Music App
//
//  Created by chrisman on 01/08/19.
//  Copyright © 2019 chrisman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {
        let sounds=["note1","note2", "note3", "note4", "note5", "note6","note7"]
//        print(sounds[sender.tag-1])
        let songs=sounds[sender.tag-1]
        let url = Bundle.main.url(forResource: songs , withExtension: "wav")!

           do {
            player = try AVAudioPlayer(contentsOf: url)
               guard let player = player else { return }

               player.prepareToPlay()
               player.play()

           } catch let error as NSError {
               print(error.description)
           }
        
    }
}

