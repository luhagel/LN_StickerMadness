//
//  Mustache.swift
//  StickerMadness
//
//  Created by Luca Hagel on 6/28/16.
//  Copyright © 2016 Luca Hagel. All rights reserved.
//

import UIKit

class Mustache: Sticker {
    
    init(){
        super.init(height: 50, width: 100, imageName: "Mustache1.png")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
