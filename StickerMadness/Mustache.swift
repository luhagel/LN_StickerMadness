//
//  Mustache.swift
//  StickerMadness
//
//  Created by Luca Hagel on 6/28/16.
//  Copyright © 2016 Luca Hagel. All rights reserved.
//

import UIKit

class Mustache: UIImageView {
    
    var height: Int
    var width: Int
    let sticker: UIImage
    
    init(){
        height = 50
        width = 100
        sticker = UIImage(named: "Mustache1.png")!
        super.init(image: sticker)
        self.frame = CGRect(x: 0, y: 0, width: width, height: height)
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
