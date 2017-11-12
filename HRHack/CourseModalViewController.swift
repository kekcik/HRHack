//
//  CourseModalViewController.swift
//  HRHack
//
//  Created by Ivan Trofimov on 10/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit

class CourseModalViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        view.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.4)
        view.isOpaque = false
        contentView.makeShadow()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var cancelButton: UIView!
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        self.dismiss(animated: false)
//        self.navigationController!.popViewController(animated: true)
    }
    
    
    @IBAction func addCalendarAction(_ sender: Any) {
        
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
