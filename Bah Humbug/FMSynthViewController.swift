//
//  ViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 05/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa
import AVFoundation
import AudioKit

class FMSynthViewController: NSViewController {
    @IBOutlet weak var freqSlider :NSSlider!
    @IBOutlet weak var carrierScalarSlider :NSSlider!
    @IBOutlet weak var muteButton :NSButton!
    let osc = AKFMOscillator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        AudioKit.output = osc
        AudioKit.start()
        osc.start()
    }
    
    @IBAction func sliderUpdated(sender: AnyObject) {
        osc.baseFrequency = baseFreq(freqSlider.doubleValue)
        osc.carrierMultiplier = carrierScalarSlider.doubleValue
    }
    
    func baseFreq(sliderVal: Double) -> Double {
        return sliderVal.midiNoteToFrequency()
    }
    
    @IBAction func toggleAudio(sender: AnyObject) {
        //renderingAudio = !renderingAudio
        muteButton.doubleValue <= 0 ? osc.start() : osc.stop()
    }
}

