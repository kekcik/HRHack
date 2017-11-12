//
//  ProfileViewController.swift
//  HRHack
//
//  Created by Ivan Trofimov on 09/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    public var navigationColor = UIColor.red
    public var navigationTitle = "123"
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = navigationColor
        self.title = navigationTitle
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false;
    }
    
    @IBAction func openCourseModal(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "courseVC")
        vc?.modalPresentationStyle = .overCurrentContext
        present(vc!, animated: false)
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "skillCell")
        return cell!
    }
}

extension ProfileViewController: UITableViewDelegate {
    
}
