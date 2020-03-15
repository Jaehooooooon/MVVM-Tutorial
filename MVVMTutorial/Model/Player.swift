//
//  Player.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/15.
//  Copyright © 2020 서재훈. All rights reserved.
//

import Foundation

class Player: NSObject {
    
    let identifier: String
    var name: String
    
    init(name: String, identifier: String) {
        self.name = name
        self.identifier = identifier
    }
}
