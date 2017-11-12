//
//  SkillCellTableViewCell.swift
//  HRHack
//
//  Created by Ivan Trofimov on 10/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import UIKit
import TGPControls

class SkillCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    public var name: String = "" {
        didSet {
            nameLabel.text = name
        }
    }
    
    public var that : UIViewController?
    public var height: NSLayoutConstraint?
    public var slider: TGPDiscreteSlider?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
//            that?.dismiss(animated: false)
            height?.constant = 60
            slider?.alpha = 1
        }
        // Configure the view for the selected state
    }

}
