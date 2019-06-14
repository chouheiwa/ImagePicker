//
//  ViewController.swift
//  ImagePickerDemo
//
//  Created by Di on 2019/6/10.
//  Copyright © 2019 chouheiwa. All rights reserved.
//

import UIKit
import ImagePicker

class ViewController: UIViewController, ImagePickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func showPicker(_ sender: Any) {
        let imagePickerController = ImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.imageLimit = 1
        present(imagePickerController, animated: true, completion: nil)

    }

    func wrapperDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
        print("点击了")
    }
    func doneButtonDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
        print("点击完成了")
    }
    func cancelButtonDidPress(_ imagePicker: ImagePickerController) {

    }

}

