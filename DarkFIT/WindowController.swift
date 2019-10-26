//
//  WindowController.swift
//  DarkFIT
//
//  Created by Thats Me on 24/10/2019.
//  Copyright © 2019 Ondrej Wrzecionko. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController, NSWindowDelegate {

    func windowWillClose(_ notification: Notification) {
        NSApplication.shared.terminate(self)
    }

}
