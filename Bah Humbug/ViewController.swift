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

class ViewController: NSViewController {
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
        
        NSNotificationCenter.defaultCenter().addObserver(self,
                                                         selector:(#selector(NSWindowDelegate.windowWillClose(_:))),
                                                         name:NSWindowWillCloseNotification,
                                                         object:self.view.window)
    }

    @IBAction func sliderUpdated(sender: AnyObject) {
        osc.baseFrequency = baseFreq(freqSlider.doubleValue)
        osc.carrierMultiplier = carrierScalarSlider.doubleValue
    }
    
    func windowWillClose(notification: NSNotification) {
        NSApplication.sharedApplication().terminate(0)
    }
    
    func baseFreq(sliderVal: Double) -> Double {
        return sliderVal.midiNoteToFrequency()
    }
    
    @IBAction func toggleAudio(sender: AnyObject) {
        //renderingAudio = !renderingAudio
        muteButton.doubleValue > 0 ? osc.start() : osc.stop()
    }
}

