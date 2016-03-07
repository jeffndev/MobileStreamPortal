//
//  StreamAccountProvider.swift
//  SandboxStreamPortal
//
//  Created by Jeff Newell on 3/4/16.
//  Copyright © 2016 Jeff Newell. All rights reserved.
//

import Foundation

class StreamAccountProvider {
    
    var name: String
    var remoteSigninCredential: String?
    var remoteSigninAccountName: String?
    var accountInitiated: Bool
    
    init(_ providerName: String) {
        name = providerName
        accountInitiated = false
    }
    
    
}
