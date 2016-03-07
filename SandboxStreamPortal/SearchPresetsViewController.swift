//
//  SearchPresetsViewController.swift
//  SandboxStreamPortal
//
//  Created by Jeff Newell on 3/4/16.
//  Copyright © 2016 Jeff Newell. All rights reserved.
//

import UIKit
import iAd

class SearchPresetsViewController: UIViewController {

    let CELL_ID = "SearchResultCell" 
    
    @IBOutlet weak var resultsTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var selectPresets: UISegmentedControl! //TODO: This is going to have to be a Collection View with custom cells with image buttons
                                                          // just followed the mockup for now, but segment controls are SINGLE select, no go
    
    
}
extension SearchPresetsViewController: UISearchBarDelegate {
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        //TODO: Search the API(s) with text changes...
    }
    
}