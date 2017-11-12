//
//  ViewController.swift
//  HRHack
//
//  Created by Ivan Trofimov on 09/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.makeShadow()
        button2.makeShadow()
        button3.makeShadow()
        button4.makeShadow()
        becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true;
        self.bottomConstraint.constant = self.view.frame.height - 80
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 0.5, animations: {
            self.bottomConstraint.constant = 0
            self.view.layoutIfNeeded()
        }) { (_) in
        }
    }
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let refreshAlert = UIAlertController(title: "Выбор сценария", message: "Необходимо выбрать кто будет использовать приложение", preferredStyle: UIAlertControllerStyle.alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Пользователь", style: .default, handler: { (action: UIAlertAction!) in
                print("Пользователь")
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Специалист", style: .cancel, handler: { (action: UIAlertAction!) in
                print("Специалист")
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            
        }
    }

    @IBAction func selectCategoryAction(_ sender: Any) {
        let button = sender as! UIButton
        
        switch button.tag {
        case 0:
            openSkillList(button)
        default:
            return 
        }
        
        
    }
    
    
    func openSkillList(_ button: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "profileVC") as! ProfileViewController
        vc.navigationColor = button.backgroundColor!
        vc.navigationTitle = (button.titleLabel?.text!)!
        UIView.animate(withDuration: 0.5, animations: {
            self.bottomConstraint.constant = self.view.frame.height - 80
            self.view.layoutIfNeeded()
        }) { (_) in
            self.navigationController?.isNavigationBarHidden = false;
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
}

