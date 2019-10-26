//
//  DarkFITApplication.swift
//  DarkFIT
//
//  Created by Thats Me on 24/10/2019.
//  Copyright © 2019 Ondrej Wrzecionko. All rights reserved.
//

import Cocoa

class DarkFITApplication: NSApplication {

    @IBAction func openNewWindow(_ sender: NSMenuItem) {
        let windowController = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "NSWindowController") as! NSWindowController
        windowController.showWindow(self)
    }
    
}
