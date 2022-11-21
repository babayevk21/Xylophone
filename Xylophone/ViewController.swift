//
//  ViewController.swift
//  Xylophone
//
//  Created by Babayev Kamran on 20.11.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var CView: UIButton!
    @IBOutlet weak var DView: UIButton!
    @IBOutlet weak var EView: UIButton!
    @IBOutlet weak var FView: UIButton!
    @IBOutlet weak var GView: UIButton!
    @IBOutlet weak var AView: UIButton!
    @IBOutlet weak var BView: UIButton!
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCornerViews()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {

        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        
        playSound(soundName: (sender.titleLabel?.text)!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func buttonCornerViews() {
        CView.layer.cornerRadius = 15
        DView.layer.cornerRadius = 15
        EView.layer.cornerRadius = 15
        FView.layer.cornerRadius = 15
        GView.layer.cornerRadius = 15
        AView.layer.cornerRadius = 15
        BView.layer.cornerRadius = 15
    }
    
}

