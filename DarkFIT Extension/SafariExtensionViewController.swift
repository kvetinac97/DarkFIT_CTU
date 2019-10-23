//
//  SafariExtensionViewController.swift
//  DarkFIT Extension
//
//  Created by Thats Me on 23/10/2019.
//  Copyright © 2019 Ondrej Wrzecionko. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
