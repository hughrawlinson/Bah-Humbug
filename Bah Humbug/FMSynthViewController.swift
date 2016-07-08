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
    weak var delegate:FMSynthViewControllerDelegate?
    
    @IBOutlet weak var carrierScalarSlider :NSSlider!
    @IBOutlet weak var modulationScalarSlider: NSSlider!
    @IBOutlet weak var modulationIndexSlider: NSSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
    }
    
    @IBAction func sliderUpdated(sender: AnyObject) {
        self.delegate?.sliderUpdated(self)
    }
}

protocol FMSynthViewControllerDelegate: class {
    func sliderUpdated(sender: FMSynthViewController)
}