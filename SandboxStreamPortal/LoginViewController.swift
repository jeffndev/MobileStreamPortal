//
//  ViewController.swift
//  SandboxStreamPortal
//
//  Created by Jeff Newell on 3/3/16.
//  Copyright © 2016 Jeff Newell. All rights reserved.
//

import UIKit

protocol StreamAccountSigninDelegate {
    func signIn(toProviderAccount account: StreamAccountProvider)
}

class LoginViewController: UIViewController {

    let ACCOUNT_PROVIDER_CELL_ID = "ProviderCell"
    
    let accounts = [ StreamAccountProvider("Netflix"), StreamAccountProvider("HULU"), StreamAccountProvider("Amazon")]
    
    @IBOutlet weak var providersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //providersTableView.registerClass(StreamAccountSigninCell.self, forCellReuseIdentifier: ACCOUNT_PROVIDER_CELL_ID)
        providersTableView.delegate = self
        providersTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //TODO: think of what can be released if mem warning comes...
        // and how to best recover when starting up....
        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if allPresetsInitiated() {
            let searchViewController = storyboard?.instantiateViewControllerWithIdentifier("SearchPresetsViewController") as! SearchPresetsViewController
            presentViewController(searchViewController, animated: true, completion: nil)
        }
        //TODO: check which need sign-ins and enable those sign-in buttons
        
    }
    
    func allPresetsInitiated() -> Bool {
        //TODO: check the data first, if all configured presets are initiated
        //
        return false
    }

}

extension LoginViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = providersTableView.dequeueReusableCellWithIdentifier(ACCOUNT_PROVIDER_CELL_ID) as! StreamAccountSigninCell
        cell.delegate = self
        let provider = accounts[indexPath.row]
        cell.accountProvider = provider
        cell.signinButton.setTitle(provider.name, forState: .Normal)
        return cell
    }
}

extension LoginViewController: StreamAccountSigninDelegate {
    func signIn(toProviderAccount account: StreamAccountProvider) {
        //TODO:
        print("signin delegate action for: \(account.name)")
    }
}