//
//  ViewController.swift
//  tts-app
//
//  Created by takami228 on 2018/01/18.
//  Copyright © 2018年 takami228. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var TextLabel: UILabel!
    @IBOutlet var Button: UIButton!
    @IBOutlet var TextField: UITextField!
    
    @IBAction func TouchEvent(_ sender: Any) {
        let talker = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: TextField.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        talker.speak(utterance)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextField.keyboardType = UIKeyboardType.default
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

