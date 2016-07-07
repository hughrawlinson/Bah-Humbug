//
//  TabContainerViewController.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 06/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa

class TabContainerViewController :NSTabViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self,
                                                         selector:(#selector(NSWindowDelegate.windowWillClose(_:))),
                                                         name:NSWindowWillCloseNotification,
                                                         object:self)
    }
    
    func windowWillClose(notification: NSNotification) {
        print("Message Recieved")
        NSApplication.sharedApplication().terminate(0)
    }
}
