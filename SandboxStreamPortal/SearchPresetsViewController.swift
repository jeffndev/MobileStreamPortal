//
//  SearchPresetsViewController.swift
//  SandboxStreamPortal
//
//  Created by Jeff Newell on 3/4/16.
//  Copyright © 2016 Jeff Newell. All rights reserved.
//

import UIKit
import iAd

protocol SelectPresetDelegate {
    func togglePreset(forAccountProvider provider: StreamAccountProvider, isSelected: Bool)
}

class SearchPresetsViewController: UIViewController {

    let SELECT_PRESET_TOGGLE_CELL_ID = "PresetCell"
    let CELL_ID = "SearchResultCell" 
    
    @IBOutlet weak var resultsTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var selectPresets: UICollectionView!
    
}
extension SearchPresetsViewController: UISearchBarDelegate {
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        //TODO: Search the API(s) with text changes...
    }
    
}