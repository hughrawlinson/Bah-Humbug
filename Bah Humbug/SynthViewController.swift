//
//  SynthViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 08/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa
import AudioKit

class SynthViewController: NSViewController {
    let fmsynth: AKFMOscillator = AKFMOscillator()
    //let synthController: SynthController = SynthController()
    @IBOutlet weak var baseFrequencySlider: NSSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AudioKit.output = fmsynth
        AudioKit.start()
        fmsynth.baseFrequency = baseFrequencySlider.doubleValue.midiNoteToFrequency()
        fmsynth.start()
    }
    
    @IBAction func toggleAudio(sender: NSButton) {
        //synthController.setMute(sender.doubleValue <= 0)
        fmsynth.amplitude = sender.doubleValue >
            0.0 ? 0.0 : 1.0
    }
    
    @IBAction func setBaseFrequency(sender: NSSlider) {
        //synthController.setFrequency(sender.doubleValue.midiNoteToFrequency())
        fmsynth.baseFrequency = sender.doubleValue.midiNoteToFrequency()
    }
    
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationController as! FMSynthViewController
        vc.delegate = self
    }
}

extension SynthViewController: FMSynthViewControllerDelegate {
    func sliderUpdated(sender: FMSynthViewController) {
        fmsynth.carrierMultiplier = sender.carrierScalarSlider.doubleValue
        fmsynth.modulatingMultiplier = sender.modulationScalarSlider.doubleValue
        fmsynth.modulationIndex = sender.modulationIndexSlider.doubleValue
    }
}