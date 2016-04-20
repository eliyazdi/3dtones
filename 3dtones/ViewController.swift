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
                    if (touch.force > 0) && (touch.force < (2/3)){
                        playAnd("a")
                    }else if (touch.force > (2/3)) && (touch.force < (5/3)){
                        playAnd("b")
                    }else if (touch.force > (5/3)) && (touch.force < (8/3)){
                        playAnd("c")
                    }else if (touch.force > (8/3)) && (touch.force < (11/3)){
                        playAnd("d")
                    }else if (touch.force > (11/3)) && (touch.force < (14/3)){
                        playAnd("e")
                    }else if (touch.force > (14/3)) && (touch.force < (17/3)){
                        playAnd("f")
                    }else if (touch.force > (17/3)) && (touch.force < (20/3)){
                        playAnd("g")
                    }else{
                        playAnd("a")
                    }
                }else{
                    forceLabel.text = "Your device isn't compatible :("
                    
            }
        }
    }
}