//
//  PreferencesViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 08/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa
import AudioKit

class PreferencesViewController: NSViewController {
    @IBOutlet weak var audioDeviceSelector: NSPopUpButtonCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioDeviceSelector.addItemsWithTitles(AudioKit.availableOutputs!.map({ (device: AKDevice) -> String in
            device.name
        }))
    }
    
    @IBAction func audioDeviceChanged(sender: AnyObject) {
        
    }
    
}