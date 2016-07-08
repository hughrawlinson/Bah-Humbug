//
//  SynthViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 08/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa
import AudioKit

class SynthViewController :NSViewController {
    let synthController :SynthController
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func toggleAudio(sender: NSButton) {
        synthController.setMute(sender.doubleValue <= 0)
    }
    
    @IBAction func setBaseFrequency(sender: NSSlider) {
        synthController.setFrequency(sender.doubleValue.midiNoteToFrequency())
    }
}