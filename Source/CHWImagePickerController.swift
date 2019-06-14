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
    var wrapperDidPressHandler: ((ImagePickerController, [UIImage]) -> Void)?
    var doneButtonDidPressHandler: ((ImagePickerController, [UIImage]) -> Void)?
    var cancelButtonDidPressHandler: ((ImagePickerController) -> Void)?

    func wrapperDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
      wrapperDidPressHandler?(imagePicker, images)
    }

    func doneButtonDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
      doneButtonDidPressHandler?(imagePicker, images)
    }

    func cancelButtonDidPress(_ imagePicker: ImagePickerController) {
      cancelButtonDidPressHandler?(imagePicker)
    }
  }

  let chwObject = CHWImagePickerControllerDelegate()

  var wrapperDidPressHandler: ((ImagePickerController, [UIImage]) -> Void)? {
    get {
      return chwObject.wrapperDidPressHandler
    }
    set {
      chwObject.wrapperDidPressHandler = newValue
    }
  }
  var doneButtonDidPressHandler: ((ImagePickerController, [UIImage]) -> Void)? {
    get {
      return chwObject.doneButtonDidPressHandler
    }
    set {
      chwObject.doneButtonDidPressHandler = newValue
    }
  }
  var cancelButtonDidPressHandler: ((ImagePickerController) -> Void)? {
    get {
      return chwObject.cancelButtonDidPressHandler
    }
    set {
      chwObject.cancelButtonDidPressHandler = newValue
    }
  }

  public required init(configuration: Configuration = Configuration(),
                       wrapperDidPressHandler: ((ImagePickerController, [UIImage]) -> Void)? = nil,
                       doneButtonDidPressHandler: ((ImagePickerController, [UIImage]) -> Void)? = nil,
                       cancelButtonDidPressHandler: ((ImagePickerController) -> Void)? = nil) {
    super.init(configuration: configuration)
    self.delegate = chwObject
    self.wrapperDidPressHandler = wrapperDidPressHandler
    self.doneButtonDidPressHandler = doneButtonDidPressHandler
    self.cancelButtonDidPressHandler = cancelButtonDidPressHandler
  }

  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  @objc public required init(configuration: Configuration = Configuration()) {
    super.init(configuration: configuration)
  }
}
