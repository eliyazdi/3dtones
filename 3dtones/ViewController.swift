//
//  ViewController.swift
//  3dtones
//
//  Created by Eli Yazdi on 4/20/16.
//  Copyright © 2016 Eli Yazdi. All rights reserved.
//

import UIKit
import AVFoundation


var typing : String = ""

let prefs = NSUserDefaults.standardUserDefaults()

func setInstrument(ins : String){
    prefs.setValue(ins, forKey: "instrument")
}

var myAudioPlayer = AVAudioPlayer()

func playSound(whichSound : String, instrument : String){
    var url = ""
    if instrument == "piano"{
        url = "Piano.mf."+whichSound
    }
    print(url)
    let filePathC = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(url, ofType: "aiff")!)
    do{
        try myAudioPlayer = AVAudioPlayer(contentsOfURL: filePathC)
        myAudioPlayer.play()
    }catch{
        print("error")
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

func playPlus(note : String, force : CGFloat){
    print(force)
    let octave = octaveByForce(force)
    let instrument = prefs.stringForKey("instrument")
    playSound(note+octave, instrument: instrument!)
}

class key1 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("A", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key2 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("B", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key3 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("C", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key4 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("D", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key5 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("E", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key6 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("F", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class key7 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("G", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class keyB1 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("Bb", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class keyB2 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("Db", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class keyB3 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("Eb", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class keyB4 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("Gb", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

class keyB5 : UIButton{
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            playPlus("Ab", force: touch.force)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
    }
}

func getCharByForce(force : CGFloat, chars : Array<String>) -> String{
    if (force >= 0) && (force < (2/3)){
        //Level 1
        return chars[0]
    }else if (force > (2/3)) && (force < (5/3)){
        //Level 2
        return chars[1]
    }else if (force > (5/3)) && (force < (8/3)){
        //Level 3
        return chars[2]
    }else if (force > (8/3)) && (force < (11/3)){
        //Level 4
        return chars[3]
    }else if (force > (11/3)) && (force < (14/3)){
        //Level 5
        return chars[4]
    }else if (force > (14/3)) && (force < (17/3)){
        //Level 6
        return chars[5]
    }else if (force > (17/3)) && (force <= (20/3)){
        //Level 7
        return chars[6]
    }else{
        //Else??
        return chars[0]
    }
}

class keyboard1 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["A", "B", "C", "D", "E", "F", "G"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard2 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["H", "I", "J", "K", "L", "M", "N"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard3 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["O", "P", "Q", "R", "S", "T", "U"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard4 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["V", "W", "X", "Y", "Z", "0", "1"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard5 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["2", "3", "4", "5", "6", "7", "8"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard6 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["9", "!", "@", "#", "$", "%", "^"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard7 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["&", "*", "(", ")", "-", "_", "+"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard8 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["=", "[", "]", "\\", ";", ":", "'"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class keyboard9 : UIButton {
    var out : String = ""
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            print(touch.force)
            let chars = ["\"", ",", "<", ".", ">", "/", "?"]
            out = getCharByForce(touch.force, chars: chars)
            print(out)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Touches End")
        typing += out
        print(typing)
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        if (prefs.stringForKey("instrument") == nil){
            setInstrument("piano")
//        }
    }

    @IBAction func backspace(sender: UIButton) {
        if typing.characters.count > 0{
            let desiredLength = typing.startIndex.advancedBy(typing.characters.count-1)
            let truncated = typing.substringToIndex(desiredLength)
            typing = truncated
            print(typing)
        }
    }
    @IBAction func spaceKey(sender: UIButton) {
        typing+=" "
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        NSURLCache.sharedURLCache().removeAllCachedResponses()
    }
}