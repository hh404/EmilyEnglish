//
//  LetterSoundClCell.swift
//  EmilyEnglish
//
//  Created by huangjianwu on 2018/12/3.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit
import SnapKit
import RandomColorSwift

class LetterSoundClCell: UICollectionViewCell {
    let letterImageView = UIImageView(frame: .zero)
    let letterLabel = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(letterImageView)
        letterImageView.backgroundColor = randomColor()
        letterImageView.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview().offset(4)
            make.right.equalToSuperview().offset(-4)
            make.height.equalTo(128)
        }
        
        letterLabel.textAlignment = .center
        letterLabel.backgroundColor = randomColor()
        self.contentView.addSubview(letterLabel)
        letterLabel.snp.makeConstraints { (make) in
            make.right.left.equalTo(letterImageView)
            make.top.equalTo(letterImageView.snp.bottom)
            make.height.equalTo(48)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
