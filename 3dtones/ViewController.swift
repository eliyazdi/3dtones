//
//  ViewController.swift
//  3dtones
//
//  Created by Eli Yazdi on 4/20/16.
//  Copyright © 2016 Eli Yazdi. All rights reserved.
//

import UIKit
import AVFoundation

var myAudioPlayer = AVAudioPlayer()

func playSound(whichSound : String){
    let filePathC = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(whichSound, ofType: "mp3")!)
    do{
        try myAudioPlayer = AVAudioPlayer(contentsOfURL: filePathC)
        myAudioPlayer.play()
    }catch{
        print("error")
    }
}


class ViewController: UIViewController {
    
    
    @IBOutlet weak var forceLabel: UILabel!
    
    
    func playAnd(whichSound : String){
        playSound(whichSound)
        forceLabel.text = whichSound.uppercaseString
    }
    
    func playNoteByForce(what : CGFloat){
        if (what > 0) && (what < (2/3)){
            playAnd("c")
        }else if (what > (2/3)) && (what < (5/3)){
            playAnd("d")
        }else if (what > (5/3)) && (what < (8/3)){
            playAnd("e")
        }else if (what > (8/3)) && (what < (11/3)){
            playAnd("f")
        }else if (what > (11/3)) && (what < (14/3)){
            playAnd("g")
        }else if (what > (14/3)) && (what < (17/3)){
            playAnd("e")
        }else if (what > (17/3)) && (what < (20/3)){
            playAnd("b")
        }else{
            playAnd("b")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
                    // 3D Touch capable
                    playNoteByForce(touch.force)
                }else{
                    forceLabel.text = "Your device isn't compatible :("
                    
            }
        }
    }
}