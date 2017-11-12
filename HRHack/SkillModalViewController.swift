//
//  SkillModalViewController.swift
//  HRHack
//
//  Created by Ivan Trofimov on 11/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit
import TGPControls

class SkillModalViewController: UIViewController {
    let names = [
        "General > Agile",
        "General > Scrum",
        "IT > Проектирование Agile",
        "General > Kanban"]

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var slider: TGPDiscreteSlider!
    @IBOutlet weak var height: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hideModalAction(_ sender: Any) {
        dismiss(animated: false)
    }
    
}

extension SkillModalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SkillCellTableViewCell") as! SkillCellTableViewCell
        cell.name = names[indexPath.row]
        cell.that = self
        cell.height = height
        cell.slider = slider
        return cell
    }
    
    
}
