//
//  PhotoViewController.swift
//  SimpleCamera
//
//  Created by Dion Pettaway on 23/11/15.
//  Copyright (c) 2015 Dipet. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var imageView:UIImageView!

    var image:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(sender: AnyObject) {
        guard let imageToSave = image else {
            return
        }
        UIImageWriteToSavedPhotosAlbum(imageToSave, nil, nil, nil)
        dismissViewControllerAnimated(true, completion: nil)
    }
    

    

}
