//
//  AppDelegate.swift
//  DarkFIT
//
//  Created by Thats Me on 23/10/2019.
//  Copyright © 2019 Ondrej Wrzecionko. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    @IBAction func helpMenu(_ sender: Any) {
        NSWorkspace.shared.open(URL(string: "https://www.kvetinac97.cz/uploads/darkFitHelp.html")!)
    }
    
    
}
