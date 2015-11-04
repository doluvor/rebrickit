//
//  Set.swift
//  rebrickit
//
//  Created by iosDevMacbookPro on 15/10/26.
//  Copyright © 2015年 doluvor. All rights reserved.
//

import Foundation

enum LegoSetType {
    case Set, Moc, Kit
}

class LegoSet {
    
    let id : String
    let type : LegoSetType
    let pieces : Int
    let description : String
    let theme : String
    let year : Int
    let imageTiny : String
    let imageSmall : String
    let imageBig : String
    
    init(id : String, type : LegoSetType, pieces : Int, description : String, theme : String, year : Int, imageTiny : String, imageSmall : String, imageBig : String) {
        self.id = id
        self.type = type
        self.pieces = pieces
        self.description = description
        self.theme = theme
        self.year = year
        self.imageTiny = imageTiny
        self.imageSmall = imageSmall
        self.imageBig = imageBig
    }
}