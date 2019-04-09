//
//  LetterModel.swift
//  EmilyEnglish
//
//  Created by huangjianwu on 2018/12/3.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

enum LetterType {
    case audio
    case video
}

class LetterModel: NSObject {
    var type: LetterType = .audio
    var fileName: String = ""
    var letter: String = ""
}


class AViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "A"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "BA"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "AB"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "BAB"
        dataArray.append(bab)
    }
}

class BViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "B"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "BA"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "AB"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "BAB"
        dataArray.append(bab)
    }
}

class CViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "C"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "CA"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "AC"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "CAC"
        dataArray.append(bab)
    }
}

class DViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "D"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "DA"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "AD"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "BAD"
        dataArray.append(bab)
    }
}

class EViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "E"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "DE"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "ED"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "DEC"
        dataArray.append(bab)
    }
}

class FViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "F"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "FA"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "AF"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "FAD"
        dataArray.append(bab)
    }
}

class GViewModel: NSObject {
    var dataArray: [LetterModel] = []
    
    override init() {
        super.init()
        
        let a = LetterModel()
        a.fileName = ""
        a.type = .audio
        a.letter = "G"
        dataArray.append(a)
        
        let ba = LetterModel()
        ba.fileName = ""
        ba.type = .audio
        ba.letter = "FA"
        dataArray.append(ba)
        
        let ab = LetterModel()
        ab.fileName = ""
        ab.type = .audio
        ab.letter = "AF"
        dataArray.append(ab)
        
        let bab = LetterModel()
        bab.fileName = ""
        bab.type = .audio
        bab.letter = "FAD"
        dataArray.append(bab)
    }
}
