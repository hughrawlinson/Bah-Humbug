//
//  ViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 05/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa
import AVFoundation

class FMSynthViewController: NSViewController {
    @IBOutlet weak var carrierScalarSlider :NSSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear() {
        // Stop the audio
    }
    
    @IBAction func sliderUpdated(sender: AnyObject) {
        // Set carrier frequency
    }
}

