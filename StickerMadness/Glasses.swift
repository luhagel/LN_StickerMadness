//
//  Glasses.swift
//  StickerMadness
//
//  Created by Luca Hagel on 6/28/16.
//  Copyright © 2016 Luca Hagel. All rights reserved.
//

import UIKit

class Glasses: Sticker {
    
    init(){
        super.init(height: 50, width: 100, imageName: "eyeglasses1.png")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
