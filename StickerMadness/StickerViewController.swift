//
//  StickerViewController.swift
//  StickerMadness
//
//  Created by Luca Hagel on 6/28/16.
//  Copyright © 2016 Luca Hagel. All rights reserved.
//

import UIKit

class StickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBAction func photoButtonTapped(sender: AnyObject) {
        if (UIImagePickerController.isSourceTypeAvailable(.Camera)) {
            if UIImagePickerController.availableCaptureModesForCameraDevice(.Rear) != nil {
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .Camera
                imagePicker.cameraCaptureMode = .Photo
                presentViewController(imagePicker, animated: true, completion: {})
            } else {
                print("Application cannot access the camera.")
            }
        } else {
            print("Application cannot access the camera.")
        }
    }
    
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
    let imagePicker: UIImagePickerController! = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
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
    
    //MARK: Delegates
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print("Got an image")
        if let pickedImage:UIImage = (info[UIImagePickerControllerOriginalImage]) as? UIImage {
            bgImage = pickedImage
        }
        imagePicker.dismissViewControllerAnimated(true, completion: {
            // Anything you want to happen when the user saves an image
            print("image taken")
            self.backgroundImageView.image = self.bgImage

        })
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        print("User canceled image")
        dismissViewControllerAnimated(true, completion: {
            // Anything you want to happen when the user selects cancel
        })
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
