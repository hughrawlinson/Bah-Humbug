//
//  SynthController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 08/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

//import AudioKit

class SynthController {
    //var synths = [String: Synth]()
    //var vol = AKNode()

    init () {
        //synths.updateValue(FMSynth(), forKey: "FMSynth")
        //synths.updateValue(SubSynth(), forKey: "SubSynth")
        
//        synths.values.first?.getOutputNode().addConnectionPoint(vol)
        
        // AudioKit.output = vol
    }
    
    func setFrequency(freq :Double) {
        //for synth in synths {
        //    synth.1.setFrequency(freq)
        //}
    }
    
    func setOutput(key: String){
        
//        AudioKit.output = synths[key]?.getOutputNode()
    }
    
    func setMute(mute :Bool) {
//        mute ? AudioKit.stop() : AudioKit.start()
    }
}

extension SynthController: TabContainerViewControllerDelegate {
    func setFmParams(carrierScalar: Double,
                     modulationScalar: Double,
                     modulationIndex: Double) {
        
    }
}

class Synth {
    func setFrequency(freq: Double){}
//    func getOutputNode() -> AKNode {return AKNode()}
}

class FMSynth :Synth {
    
}

class SubSynth :Synth {
    
}