//
//  GameLibrary.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/15.
//  Copyright © 2020 서재훈. All rights reserved.
//

import Foundation

enum GameLibraryNotifications {
    static let GameLibraryGameAdded    = "GameLibraryGameAdded"
    static let GameLibraryGameRemoved  = "GameLibraryGameRemoved"
    static let GameLibraryGameUpdated  = "GameLibraryGameUpdated"
}

protocol GameLibrary {
    func allGames() -> [Game]
    func addGame(_ game: Game) // posts GameLibraryGameAdded notifications
    func removeGame(_ game: Game) // posts GameLibraryGameRemoved notifications
    func updateGame(_ game: Game) // posts GameLibraryGameUpdated notifications
}
