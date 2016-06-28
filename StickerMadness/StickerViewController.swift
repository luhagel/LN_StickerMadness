//
//  StickerViewController.swift
//  StickerMadness
//
//  Created by Luca Hagel on 6/28/16.
//  Copyright © 2016 Luca Hagel. All rights reserved.
//

import UIKit

class StickerViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBAction func mustacheButtonTapped(sender: UIButton) {
        self.addSticker("Mustache")
    }
    
    @IBAction func hatButtonTapped(sender: UIButton) {
        self.addSticker("hat")
    }
    
    @IBAction func glassesButtonTapped(sender: UIButton) {
        self.addSticker("eyeglasses")
    }
    
    var bgImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Methods
    
    func addSticker(type: String) {
        let imageView: UIImageView
        
        switch(type){
        
        case "Mustache":
           imageView = Mustache()
        
        case "eyeglasses":
            imageView = Glasses()
        
        case "hat":
            imageView = Hat()
        default:
            return
        }
        
        view.addSubview(imageView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
