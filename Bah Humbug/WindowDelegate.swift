//
//  WindowDelegate.swift
//  Bah Humbug
//
//  Created by Hugh Rawlinson on 05/07/16.
//  Copyright © 2016 Hugh Rawlinson. All rights reserved.
//

import Cocoa

class WindowDelegate : NSObject, NSWindowDelegate {
    func windowWillClose(notification: NSNotification) {
        NSApplication.sharedApplication().terminate(self)
    }
}