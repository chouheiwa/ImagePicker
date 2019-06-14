//
//  CHWImagePickerController.swift
//  ImagePicker-iOS
//
//  Created by Di on 2019/6/14.
//  Copyright © 2019 Hyper Interaktiv AS. All rights reserved.
//

import UIKit

public class CHWImagePickerController: ImagePickerController {
  class CHWImagePickerControllerDelegate: NSObject, ImagePickerDelegate {
    var wrapperDidPressHandler: (([UIImage]) -> Void)?
    var doneButtonDidPressHandler: (([UIImage]) -> Void)?
    var cancelButtonDidPressHandler: (() -> Void)?

    func wrapperDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
      wrapperDidPressHandler?(images)
    }

    func doneButtonDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
      doneButtonDidPressHandler?(images)
    }

    func cancelButtonDidPress(_ imagePicker: ImagePickerController) {
      cancelButtonDidPressHandler?()
    }
  }

  let chwDelegate = CHWImagePickerControllerDelegate()

  var wrapperDidPressHandler: (([UIImage]) -> Void)? {
    get{
      return chwDelegate.wrapperDidPressHandler
    }
    set{
      chwDelegate.wrapperDidPressHandler = newValue
    }
  }
  var doneButtonDidPressHandler: (([UIImage]) -> Void)? {
    get{
      return chwDelegate.doneButtonDidPressHandler
    }
    set{
      chwDelegate.doneButtonDidPressHandler = newValue
    }
  }
  var cancelButtonDidPressHandler: (() -> Void)? {
    get{
      return chwDelegate.cancelButtonDidPressHandler
    }
    set{
      chwDelegate.cancelButtonDidPressHandler = newValue
    }
  }

  public required init(configuration: Configuration = Configuration(),
                       wrapperDidPressHandler: (([UIImage]) -> Void)? = nil,
                       doneButtonDidPressHandler: (([UIImage]) -> Void)? = nil,
                       cancelButtonDidPressHandler: (() -> Void)? = nil) {
    self.wrapperDidPressHandler = wrapperDidPressHandler
    self.doneButtonDidPressHandler = doneButtonDidPressHandler
    self.cancelButtonDidPressHandler = cancelButtonDidPressHandler
    super.init(configuration: configuration)
  }
}
