//
//  PresetSelectCollectionViewCell.swift
//  SandboxStreamPortal
//
//  Created by Jeff Newell on 3/9/16.
//  Copyright © 2016 Jeff Newell. All rights reserved.
//

import UIKit

class PresetSelectCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var selectToggleButton: UIButton!
    
    var providerAccount: StreamAccountProvider?
    var delegate: SelectPresetDelegate?
    private var isSelected = false
    
    @IBAction func togglePreset() {
        isSelected = !isSelected
        if let delegate = delegate, providerAccount = providerAccount {
            delegate.togglePreset(forAccountProvider: providerAccount, isSelected: isSelected)
            //TODO: toggle the UI with creatives for Selected/Not Selected for each supported account..
            selectToggleButton.setImage(UIImage(named: searchPresetsToggleImageName(providerAccount, isSelected: isSelected)), forState: .Normal)
        }
    }
    
    func searchPresetsToggleImageName(providerAccount: StreamAccountProvider, isSelected: Bool) -> String {
        //TODO: get the images made, name them appropriately and create little dictionary to grab them
        return "placeholder"
    }
    
}
