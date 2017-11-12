//
//  DataManager.swift
//  HRHack
//
//  Created by Ivan Trofimov on 09/11/2017.
//  Copyright © 2017 Ivan Trofimov. All rights reserved.
//

import Foundation

class Skill {
    let name : String
    let subNodes: [Skill]
    
    init(_ name: String, subNodes: [Skill]) {
        self.name = name
        self.subNodes = subNodes
    }
}

let skills = Skill("root",
                   subNodes: [
                    Skill("li", subNodes: []),
                    Skill("ya", subNodes: []),
                    Skill("pu", subNodes: []),
                    Skill("asd", subNodes: []),
                    Skill("da", subNodes: [
                        Skill("asd", subNodes: []),
                        Skill("asd", subNodes: []),
                        Skill("asd", subNodes: []),
                        Skill("asd", subNodes: []),
                        Skill("asd", subNodes: [
                            Skill("asd", subNodes: []),
                            Skill("asd", subNodes: []),
                            Skill("asd", subNodes: []),
                            Skill("asdsdfsdfsfsdf", subNodes: []),
                            Skill("asd", subNodes: []),
                            Skill("asd", subNodes: []),
]),
                        ]),
                    
    ])
