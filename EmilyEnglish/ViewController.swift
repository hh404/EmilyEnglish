//
//  ViewController.swift
//  EmilyEnglish
//
//  Created by hans on 2018/11/25.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit
import SwiftySound
import MobilePlayer
import Player
import SnapKit

class ViewController: UIViewController {

    fileprivate var player = PlayerViewController()
    
    // MARK: object lifecycle
    deinit {
        self.player.willMove(toParentViewController: nil)
        self.player.view.removeFromSuperview()
        self.player.removeFromParentViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.player.playerDelegate = self
        self.player.playbackDelegate = self
        
//        self.player.playerLayer().playerBackgroundColor = .black
        
        self.addChildViewController(self.player)
        self.view.addSubview(self.player.view)
        self.player.didMove(toParentViewController: self)
        
        //        let localUrl = Bundle.main.url(forResource: "IMG_3267", withExtension: "MOV")
        //        self.player.url = localUrl
//        self.player.url = "videoUrl"
        
        self.player.playbackLoops = true
        //self.player.view.frame = CGRect(x: 10, y: 100, width: 300, height: 400)
        let tapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTapGestureRecognizer(_:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        self.player.view.addGestureRecognizer(tapGestureRecognizer)
        self.player.view.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.player.playFromBeginning()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK: - UIGestureRecognizer

extension ViewController {
    
    @objc func handleTapGestureRecognizer(_ gestureRecognizer: UITapGestureRecognizer) {
        switch (self.player.playbackState.rawValue) {
        case PlaybackState.stopped.rawValue:
            self.player.playFromBeginning()
            break
        case PlaybackState.paused.rawValue:
            self.player.playFromCurrentTime()
            break
        case PlaybackState.playing.rawValue:
            self.player.pause()
            break
        case PlaybackState.failed.rawValue:
            self.player.pause()
            break
        default:
            self.player.pause()
            break
        }
    }
    
}

// MARK: - PlayerDelegate

extension ViewController: PlayerDelegate {
    func playerReady(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackStateDidChange(_ player: PlayerViewController) {
        
    }
    
    func playerBufferingStateDidChange(_ player: PlayerViewController) {
        
    }
    
    func playerBufferTimeDidChange(_ bufferTime: Double) {
        
    }
    
    
//    func playerReady(_ player: Player) {
//        print("\(#function) ready")
//    }
//
//    func playerPlaybackStateDidChange(_ player: Player) {
//        print("\(#function) \(player.playbackState.description)")
//    }
//
//    func playerBufferingStateDidChange(_ player: Player) {
//    }
//
//    func playerBufferTimeDidChange(_ bufferTime: Double) {
//    }
//
//    func player(_ player: Player, didFailWithError error: Error?) {
//        print("\(#function) error.description")
//    }
    
}

// MARK: - PlayerPlaybackDelegate

extension ViewController: PlayerPlaybackDelegate {
    func playerCurrentTimeDidChange(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackWillStartFromBeginning(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackDidEnd(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackWillLoop(_ player: PlayerViewController) {
        
    }
    
    
//    func playerCurrentTimeDidChange(_ player: Player) {
//    }
//
//    func playerPlaybackWillStartFromBeginning(_ player: Player) {
//    }
//
//    func playerPlaybackDidEnd(_ player: Player) {
//    }
//
//    func playerPlaybackWillLoop(_ player: Player) {
//    }
    
}

