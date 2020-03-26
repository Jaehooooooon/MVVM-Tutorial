//
//  UINib+Loader.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/15.
//  Copyright © 2020 서재훈. All rights reserved.
//

import UIKit

fileprivate extension UINib {
    
    static func nib(named nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func loadSingleView(_ nibName: String, owner: Any?) -> UIView {
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: owner, options: nil)[0] as! UIView
    }
}

// MARK: App Views

extension UINib {
    class func loadPlayerScoreboardMoveEditorView(_ owner: AnyObject) -> UIView {
       return loadSingleView("PlayerScoreboardMoveEditorView", owner: owner)
    }
}
