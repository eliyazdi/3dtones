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
    let url = "Piano.mf."+whichSound
    print(url)
    let filePathC = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(url, ofType: "aiff")!)
    do{
        try myAudioPlayer = AVAudioPlayer(contentsOfURL: filePathC)
        myAudioPlayer.play()
    }catch{
        print("error")
    }
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

func octaveByForce(what : CGFloat) -> String{
    if (what > 0) && (what < (2/3)){
        return "1"
    }else if (what > (2/3)) && (what < (5/3)){
        return "2"
    }else if (what > (5/3)) && (what < (8/3)){
        return "3"
    }else if (what > (8/3)) && (what < (11/3)){
        return "4"
    }else if (what > (11/3)) && (what < (14/3)){
        return "5"
    }else if (what > (14/3)) && (what < (17/3)){
        return "6"
    }else if (what > (17/3)) && (what < (20/3)){
        return "7"
    }else{
        return "7"
    }
}

class keyboardKey : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            print(touch.force)
            playSound("C"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}