//
//  FirstScillsTableViewController.swift
//  HRHack
//
//  Created by Ivan Trofimov on 10/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit

class FirstScillsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        UINavigationBar.appearance().largeTitleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]
    }
}
