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

class key1 : UIButton{
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

class key2 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("D"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key3 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("E"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key4 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("F"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key5 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("G"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")

    }
}

class key6 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("A"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")

    }
}

class key7 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("B"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}


class key2b : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("Db"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key3b : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("Eb"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}



class key5b : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("Gb"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        
    }
}

class key6b : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("Ab"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        
    }
}

class key7b : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let octave = octaveByForce(touch.force)
            playSound("Bb"+octave)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}