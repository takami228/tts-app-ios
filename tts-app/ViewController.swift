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
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var button: UIButton!
    @IBOutlet var textField: UITextField!
    @IBOutlet var modeController: UISegmentedControl!
    var languageType: String!

    @IBAction func SetLanguageType(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            textLabel.text = "Text To Speech Sample App"
            button.setTitle("Speech", for: .normal)
            languageType = "en-US"
            textField.placeholder = "Hello!"
            textField.keyboardType = UIKeyboardType.alphabet
        } else {
            textLabel.text = "テキスト読み上げサンプルアプリ"
            button.setTitle("読み上げる", for: .normal)
            languageType = "ja-JP"
            textField.placeholder = "こんにちは!"
            textField.keyboardType = UIKeyboardType.default
        }
    }
    
    @IBAction func TouchEvent(_ sender: Any) {
        let talker = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: textField.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: languageType)
        talker.speak(utterance)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.keyboardType = UIKeyboardType.alphabet
        modeController.selectedSegmentIndex = 0
        languageType = "en-US";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

