//
//  FirstScillsViewController.swift
//  HRHack
//
//  Created by Ivan Trofimov on 10/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit

class FirstScillsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        UINavigationBar.appearance().largeTitleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
