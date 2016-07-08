//
//  ViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 05/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa
import AVFoundation
//import AudioKit

class SubSynthViewController: NSViewController {
    @IBOutlet weak var Osc1Type: NSPopUpButton!
    @IBOutlet weak var Osc2Type: NSPopUpButton!
    //let osc = AKOscillator()
    
    let OscillatorTypes = [
        "Sine",
        "Triangle",
        "Square",
        "Sawtooth"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Osc1Type.addItemsWithTitles(OscillatorTypes)
        Osc2Type.addItemsWithTitles(OscillatorTypes)
//        AudioKit.output = osc
//        AudioKit.start()
//        osc.start()
    }
    
    override func viewWillDisappear() {
        //AudioKit.stop()
    }
}

