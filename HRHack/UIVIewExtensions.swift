//
//  UIVIewExtensions.swift
//  HRHack
//
//  Created by Ivan Trofimov on 09/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func makeShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 10
    }
}
