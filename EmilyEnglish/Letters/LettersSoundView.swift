//
//  LettersSoundView.swift
//  EmilyEnglish
//
//  Created by huangjianwu on 2018/11/27.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class LettersSoundViewController: UIViewController {
    var collectionView: UICollectionView?
    var aViewModel = AViewModel()
    var bViewModel = BViewModel()
    var cViewModel = CViewModel()
    var dViewModel = DViewModel()
    var eViewModel = EViewModel()
    var fViewModel = FViewModel()
    var gViewModel = GViewModel()
    var letter: Letter = .a {
        didSet {
            self.collectionView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 188, height: 188)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(LetterSoundClCell.self, forCellWithReuseIdentifier: "LetterSoundClCell")
        self.view.addSubview(collectionView!)
        
        collectionView?.snp.makeConstraints({ (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(200)
        })
    }
    
}


extension LettersSoundViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch letter {
        case .a:
            return aViewModel.dataArray.count
        case .b:
            return bViewModel.dataArray.count
        case .c:
            return cViewModel.dataArray.count
        case .d:
            return dViewModel.dataArray.count
        case .e:
            return eViewModel.dataArray.count
        case .f:
            return fViewModel.dataArray.count
        case .g:
            return gViewModel.dataArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: LetterSoundClCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LetterSoundClCell", for: indexPath) as? LetterSoundClCell ?? LetterSoundClCell()

        switch letter {
        case .a:
                let item = aViewModel.dataArray[indexPath.row]
                    cell.letterLabel.text = item.letter
        case .b:
            let item = bViewModel.dataArray[indexPath.row]
            cell.letterLabel.text = item.letter
        case .c:
            let item = cViewModel.dataArray[indexPath.row]
            cell.letterLabel.text = item.letter
        case .d:
            let item = dViewModel.dataArray[indexPath.row]
            cell.letterLabel.text = item.letter
        case .e:
            let item = eViewModel.dataArray[indexPath.row]
            cell.letterLabel.text = item.letter
        case .f:
            let item = fViewModel.dataArray[indexPath.row]
            cell.letterLabel.text = item.letter
        case .g:
            let item = gViewModel.dataArray[indexPath.row]
            cell.letterLabel.text = item.letter
        }
        

        cell.backgroundColor = .red

        return cell
    }
    
    
}

extension LettersSoundViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {


    }
}
