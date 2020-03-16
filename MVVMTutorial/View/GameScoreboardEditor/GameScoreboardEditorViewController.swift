//
//  GameScoreboardEditorViewController.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/15.
//  Copyright © 2020 서재훈. All rights reserved.
//

import UIKit

class GameScoreboardEditorViewController: UIViewController {
    
    @IBOutlet weak var homePlayer1View: PlayerScoreboardMoveEditorView!
    @IBOutlet weak var homePlayer2View: PlayerScoreboardMoveEditorView!
    @IBOutlet weak var homePlayer3View: PlayerScoreboardMoveEditorView!
    
    @IBOutlet weak var awayPlayer1View: PlayerScoreboardMoveEditorView!
    @IBOutlet weak var awayPlayer2View: PlayerScoreboardMoveEditorView!
    @IBOutlet weak var awayPlayer3View: PlayerScoreboardMoveEditorView!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var homeTeamNameLabel: UILabel!
    @IBOutlet weak var awayTeamNameLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    // ViewModel 데이터를 View 자체에 연결 - viewDidLoad() 전에 할당해야 함.
    var viewModel: GameScoreboardEditorViewModel? {
        didSet {
            fillUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleUI()
        fillUI()
    }
    
    // MARK: Button Action
    
    @IBAction func pauseButtonPress(_ sender: AnyObject) {
        viewModel?.togglePause()
    }
    
    // MARK: Private
    
    fileprivate func styleUI() {
        self.view.backgroundColor = UIColor.backgroundColor
        self.scoreLabel.textColor = UIColor.scoreColor
        self.homeTeamNameLabel.textColor = UIColor.textColor
        self.awayTeamNameLabel.textColor = UIColor.textColor
        self.timeLabel.textColor = UIColor.textColor
    }
    
    // UI를 데이터로 채우는 곳 - 데이터를 제공해야 함. ViewModel 객체로 이것을 수행
    fileprivate func fillUI() {
        
        if !isViewLoaded {
            return
        }
        
        guard let viewModel = viewModel else {
            return
        }
        
        // we are sure here that we have all the setup done
        
        self.homeTeamNameLabel.text = viewModel.homeTeam
        self.awayTeamNameLabel.text = viewModel.awayTeam
        
        self.scoreLabel.text = viewModel.score
        self.timeLabel.text = viewModel.time
        
        let title: String = viewModel.isPaused ? "Start" : "Pause"
        self.pauseButton.setTitle(title, for: .normal)
    }
    
}
