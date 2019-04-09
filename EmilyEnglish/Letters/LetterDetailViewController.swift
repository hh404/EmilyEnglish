//
//  LetterDetailViewController.swift
//  EmilyEnglish
//
//  Created by huangjianwu on 2018/11/26.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit
import SnapKit
import Player

class LetterDetailViewController: UIViewController {
    var text: String = ""
    let label = UILabel(frame: CGRect(x: 0, y: 100, width: 200, height: 40))
    var collectionView: UICollectionView?
    fileprivate var player = PlayerViewController()
    var currentViewController: UIViewController?
    let letterSoundViewController = LettersSoundViewController()
    var letter: Letter = .a {
        didSet {
            letterSoundViewController.letter = letter
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 88, height: 88)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(ImageViewClCell.self, forCellWithReuseIdentifier: "ImageViewClCell")
        self.view.addSubview(collectionView!)
        
        collectionView?.snp.makeConstraints({ (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(96)
        })
        self.initFirstSubViewController()
    }
    

    func initFirstSubViewController()  {
        currentViewController = letterSoundViewController
        self.addChildViewController(letterSoundViewController)
        self.view.addSubview(self.letterSoundViewController.view)
        self.letterSoundViewController.didMove(toParentViewController: self)
        self.letterSoundViewController.view.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(120)
        }
    }
 

    func setText()  {
        label.text = text
    }
    
    func pushViewController(_ fromViewController: UIViewController, _ toViewController: UIViewController, _ animated: Bool)  {
        //old
        toViewController.view.frame = currentViewController?.view.frame ?? .zero
        self.addChildViewController(toViewController)
        let animations: () -> Void = {
            //new
            toViewController.view.frame = .zero
        }
        let completion: (_ finished: Bool) -> Void = {[weak self] finished in
            toViewController.didMove(toParentViewController: self)
            self?.currentViewController = toViewController
        }
        
        if (!animated) {
            self.view.addSubview(toViewController.view)
            fromViewController.view.removeFromSuperview()
            animations()
            completion(true)
        }
        else{
            self.transition(from: fromViewController, to: toViewController, duration: 0.25, options: [], animations: animations, completion: completion)
        }
    }

}


extension LetterDetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageViewClCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
}

extension LetterDetailViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        self.player.playerDelegate = self
//        self.player.playbackDelegate = self
//
//        self.addChildViewController(self.player)
//        self.view.addSubview(self.player.view)
//        self.player.didMove(toParentViewController: self)
//        self.player.url = Bundle.main.url(forResource: "1", withExtension: "mp4")!
//        self.player.playbackLoops = true
//        let tapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTapGestureRecognizer(_:)))
//        tapGestureRecognizer.numberOfTapsRequired = 1
//        self.player.view.addGestureRecognizer(tapGestureRecognizer)
//        self.player.view.snp.makeConstraints { (make) in
//            make.left.right.bottom.equalToSuperview()
//            make.top.equalTo(120)
//        }
//
//        self.player.playFromBeginning()
//        self.pushViewController(currentViewController!, letterSoundViewController, false)
//        letterSoundViewController.letter =
    }
}
extension LetterDetailViewController {
    
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

extension LetterDetailViewController: PlayerDelegate {
    func playerReady(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackStateDidChange(_ player: PlayerViewController) {
        
    }
    
    func playerBufferingStateDidChange(_ player: PlayerViewController) {
        
    }
    
    func playerBufferTimeDidChange(_ bufferTime: Double) {
        
    }
}

// MARK: - PlayerPlaybackDelegate

extension LetterDetailViewController: PlayerPlaybackDelegate {
    func playerCurrentTimeDidChange(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackWillStartFromBeginning(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackDidEnd(_ player: PlayerViewController) {
        
    }
    
    func playerPlaybackWillLoop(_ player: PlayerViewController) {
        
    }
    
}

