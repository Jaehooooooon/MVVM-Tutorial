//
//  PlayerScoreboardMoveEditorViewModelFromPlayer.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/16.
//  Copyright © 2020 서재훈. All rights reserved.
//

import Foundation

class PlayerScoreboardMoveEditorViewModelFromPlayer: NSObject, PlayerScoreboardMoveEditorViewModel {
    
    fileprivate let player: Player
    fileprivate let game: Game
    
    // MARK: PlayerScoreboardMoveEditorViewModel protocol
    
    let playerName: String
    
//    var onePointMoveCount: String
//    var twoPointMoveCount: String
//    var assistMoveCount: String
//    var reboundMoveCount: String
//    var foulMoveCount: String
    let onePointMoveCount: Dynamic<String>
    let twoPointMoveCount: Dynamic<String>
    let assistMoveCount: Dynamic<String>
    let reboundMoveCount: Dynamic<String>
    let foulMoveCount: Dynamic<String>
    
    func onePointMove() {
        makeMove(.onePoint)
    }
    
    func twoPointsMove() {
        makeMove(.twoPoints)
    }
    
    func assistMove() {
        makeMove(.assist)
    }
    
    func reboundMove() {
        makeMove(.rebound)
    }
    
    func foulMove() {
        makeMove(.foul)
    }
    
    // MARK: Init
    
    init(withGame game: Game, player: Player) {
        self.game = game
        self.player = player
        
        self.playerName = player.name
//        self.onePointMoveCount = "\(game.playerMoveCount(for: player, move: .onePoint))"
//        self.twoPointMoveCount = "\(game.playerMoveCount(for: player, move: .twoPoints))"
//        self.assistMoveCount = "\(game.playerMoveCount(for: player, move: .assist))"
//        self.reboundMoveCount = "\(game.playerMoveCount(for: player, move: .rebound))"
//        self.foulMoveCount = "\(game.playerMoveCount(for: player, move: .foul))"
        self.onePointMoveCount = Dynamic("\(game.playerMoveCount(for: player, move: .onePoint))")
        self.twoPointMoveCount = Dynamic("\(game.playerMoveCount(for: player, move: .twoPoints))")
        self.assistMoveCount = Dynamic("\(game.playerMoveCount(for: player, move: .assist))")
        self.reboundMoveCount = Dynamic("\(game.playerMoveCount(for: player, move: .rebound))")
        self.foulMoveCount = Dynamic("\(game.playerMoveCount(for: player, move: .foul))")
    }
    
    // MARK: Private
    
    fileprivate func makeMove(_ move: PlayerInGameMove) {
        game.addPlayerMove(move, for: player)
        
//        onePointMoveCount = "\(game.playerMoveCount(for: player, move: .onePoint))"
//        twoPointMoveCount = "\(game.playerMoveCount(for: player, move: .twoPoints))"
//        assistMoveCount = "\(game.playerMoveCount(for: player, move: .assist))"
//        reboundMoveCount = "\(game.playerMoveCount(for: player, move: .rebound))"
//        foulMoveCount = "\(game.playerMoveCount(for: player, move: .foul))"
        onePointMoveCount.value = "\(game.playerMoveCount(for: player, move: .onePoint))"
        twoPointMoveCount.value = "\(game.playerMoveCount(for: player, move: .twoPoints))"
        assistMoveCount.value = "\(game.playerMoveCount(for: player, move: .assist))"
        reboundMoveCount.value = "\(game.playerMoveCount(for: player, move: .rebound))"
        foulMoveCount.value = "\(game.playerMoveCount(for: player, move: .foul))"
    }
    
}
