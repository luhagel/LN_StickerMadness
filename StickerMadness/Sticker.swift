//
//  Mustache.swift
//  StickerMadness
//
//  Created by Luca Hagel on 6/28/16.
//  Copyright © 2016 Luca Hagel. All rights reserved.
//

import UIKit

class Sticker: UIImageView, UIGestureRecognizerDelegate {
    
    let sticker: UIImage
    
    init(height: Int, width: Int, imageName: String) {
        sticker = UIImage(named: imageName)!
        super.init(image: sticker)
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan(_:)))
        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(self.handleRotation(_:)))
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(self.handlePinch(_:)))
        
        self.userInteractionEnabled = true
        self.frame = CGRect(x: 100, y: 100, width: width, height: height)
        self.addGestureRecognizer(pan)
        pan.delegate = self
        self.addGestureRecognizer(rotate)
        rotate.delegate = self
        self.addGestureRecognizer(pinch)
        pinch.delegate = self
    }
    
    func handlePan(panGestureRecognizer: UIPanGestureRecognizer!) {
        if panGestureRecognizer.state == .Began || panGestureRecognizer.state == .Changed {
            let translation = panGestureRecognizer.translationInView(panGestureRecognizer.view)
            if let view = panGestureRecognizer.view {
                let affinerTransformTranslate = CGAffineTransformTranslate(view.transform, translation.x, translation.y)
                view.transform = affinerTransformTranslate
                panGestureRecognizer.setTranslation(CGPointZero, inView: view)
            } else {
                print("no view")
            }
        }
    }
    
    func handleRotation(rotateGestureRecognizer: UIRotationGestureRecognizer!) {
        rotateGestureRecognizer.view!.transform = CGAffineTransformRotate(rotateGestureRecognizer.view!.transform, rotateGestureRecognizer.rotation)
        rotateGestureRecognizer.rotation = 0
    }
    
    func handlePinch(pinchGestureRecognizer: UIPinchGestureRecognizer!) {
        pinchGestureRecognizer.view!.transform = CGAffineTransformScale(pinchGestureRecognizer.view!.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale)
        pinchGestureRecognizer.scale = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
}
