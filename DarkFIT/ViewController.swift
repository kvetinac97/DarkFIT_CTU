//
//  ViewController.swift
//  DarkFIT
//
//  Created by Thats Me on 23/10/2019.
//  Copyright © 2019 Ondrej Wrzecionko. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {

    @IBOutlet var appNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appNameLabel.stringValue = "DarkFIT";
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "cz.kvetinac97.DarkFIT.extension") { error in
            if let _ = error {
                // Insert code to inform the user that something went wrong.
                let alert = NSAlert()
                alert.addButton(withTitle: "OK")
                alert.messageText = "Nepodařilo se otevřít rozšíření v Safari"
                alert.runModal()
            }
        }
    }

}
