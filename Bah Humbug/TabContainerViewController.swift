//
//  TabContainerViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 06/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa

class TabContainerViewController :NSTabViewController {
    weak var delegate:TabContainerViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        let fmvc = self.tabViewItems[self.selectedTabViewItemIndex].viewController as! FMSynthViewController
        fmvc.delegate = self
    }
        
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationController as! FMSynthViewController
        vc.delegate = self
    }
}
    
extension TabContainerViewController: FMSynthViewControllerDelegate {
    func sliderUpdated(sender: FMSynthViewController) {
        print("tabviewcontroller")
        self.delegate?.setFmParams(
            sender.carrierScalarSlider.doubleValue,
            modulationScalar: sender.modulationScalarSlider.doubleValue,
            modulationIndex: sender.modulationIndexSlider.doubleValue
        )
    }
}

protocol TabContainerViewControllerDelegate: class {
    func setFmParams(carrierScalar: Double,
                     modulationScalar: Double,
                     modulationIndex: Double)
}