//
//  SetTests.swift
//  rebrickit
//
//  Created by iosDevMacbookPro on 15/10/27.
//  Copyright © 2015年 doluvor. All rights reserved.
//

import Quick
import Nimble
@testable import rebrickit

class LegoSetTests: QuickSpec {
    
    override func spec() {
        
        let id = "10000"
        let type = LegoSetType.Set
        let pieces = 1000
        let description = "Test Lego Set"
        let theme = "Test Theme"
        let year = 2015
        let imageTiny = "imageT"
        let imageSmall = "imageS"
        let imageBig = "imageBig"
        
        var legoSet : LegoSet!
        
        beforeEach {
            legoSet = LegoSet(id: id, type: type, pieces: pieces, description: description, theme: theme, year: year, imageTiny: imageTiny, imageSmall: imageSmall, imageBig: imageBig)
        }
        
        it("Init Success") {
            expect(legoSet.id) == id
            expect(legoSet.type) == type
        }
    }
}
