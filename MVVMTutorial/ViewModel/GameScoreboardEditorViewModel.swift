//
//  GameScoreboardEditorViewModel.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/16.
//  Copyright © 2020 서재훈. All rights reserved.
//

import Foundation

protocol GameScoreboardEditorViewModel {
    var homeTeam: String { get }
    var awayTeam: String { get }
    var time: String { get }
    var score: String { get }
    var isFinished: Bool { get }
    
    var isPaused: Bool { get }
    func togglePause()
    
    // 추가
    var homePlayers: [PlayerScoreboardMoveEditorViewModel] { get }
    var awayPlayers: [PlayerScoreboardMoveEditorViewModel] { get }
}
