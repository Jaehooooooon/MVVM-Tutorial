//
//  HomeViewController.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/14.
//  Copyright © 2020 서재훈. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var gameLibrary: GameLibrary? {
        didSet {
            showGameScoreboardEditorViewController()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showGameScoreboardEditorViewController()
    }
    
    // MARK: Private
    
    fileprivate func showGameScoreboardEditorViewController() {
        if !self.isViewLoaded {
            return
        }
        
        guard let gameLibrary = gameLibrary else {
            return
        }
        
        if let game = gameLibrary.allGames().first {
            
            let controller = UIStoryboard.loadGameScoreboardEditorViewController()
            
            // uncomment this when view model is implemented
            //            let viewModel = GameScoreboardEditorViewModelFromGame(withGame: game)
            //            controller.viewModel = viewModel
            
            self.insertChildController(controller, intoParentView: self.view)
        }
    }
}
