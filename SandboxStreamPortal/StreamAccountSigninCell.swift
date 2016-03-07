//
//  StreamAccountSigninCell.swift
//  SandboxStreamPortal
//
//  Created by Jeff Newell on 3/4/16.
//  Copyright © 2016 Jeff Newell. All rights reserved.
//

import UIKit

class StreamAccountSigninCell: UITableViewCell {
    @IBOutlet weak var signinButton: UIButton!
    var delegate: StreamAccountSigninDelegate!
    var accountProvider: StreamAccountProvider!
    
    @IBAction func doLogin() {
        guard let delegate = delegate, accountProvider = accountProvider else {
            return
        }
        delegate.signIn(toProviderAccount: accountProvider)
    }
}
