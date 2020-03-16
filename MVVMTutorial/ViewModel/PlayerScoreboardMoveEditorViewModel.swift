//
//  PlayerScoreboardMoveEditorViewModel.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/16.
//  Copyright © 2020 서재훈. All rights reserved.
//

import Foundation

protocol PlayerScoreboardMoveEditorViewModel {
    var playerName: String { get }
    
    var onePointMoveCount: String { get }
    var twoPointMoveCount: String { get }
    var assistMoveCount: String { get }
    var reboundMoveCount: String { get }
    var foulMoveCount: String { get }
    
    func onePointMove()
    func twoPointsMove()
    func assistMove()
    func reboundMove()
    func foulMove()
}
