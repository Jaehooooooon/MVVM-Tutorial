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
    
//    var onePointMoveCount: String { get }
//    var twoPointMoveCount: String { get }
//    var assistMoveCount: String { get }
//    var reboundMoveCount: String { get }
//    var foulMoveCount: String { get }
    
    /// 동적으로 값이 변경되기 때문에 교체해줌
    var onePointMoveCount: Dynamic<String> { get }
    var twoPointMoveCount: Dynamic<String> { get }
    var assistMoveCount: Dynamic<String> { get }
    var reboundMoveCount: Dynamic<String> { get }
    var foulMoveCount: Dynamic<String> { get }
    
    func onePointMove()
    func twoPointsMove()
    func assistMove()
    func reboundMove()
    func foulMove()
}
