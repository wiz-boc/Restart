//
//  AudioPlayer.swift
//  Restart
//
//  Created by wizz on 11/6/21.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type:String){
    if let path = Bundle.main.path(forResource: "Sounds/\(sound)", ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            print("played")
        }catch{
            print("Could not play the sound file.")
        }
    }
}
