//
//  AppDelegate.swift
//  LeitorQRCode
//
//  Created by Ronan on 8/21/16.
//  Copyright © 2016 RONAN. All rights reserved.
//




import Foundation

/**
 The QRCodeViewControllerBuilder aims to create a simple configuration object for
 the QRCode view controller.
 */
public final class QRCodeViewControllerBuilder {
  // MARK: - Configuring the QRCodeViewController Objects

  /**
  The builder block.
  The block gives a reference of builder you can configure.
  */
  public typealias QRCodeViewControllerBuilderBlock = (builder: QRCodeViewControllerBuilder) -> Void

  /**
   The title to use for the cancel button.
   */
  public var cancelButtonTitle = "Cancel"

  /**
   The code reader object used to scan the bar code.
   */
  public var reader = QRCodeReader()

  /**
   Flag to know whether the view controller start scanning the codes when the view will appear.
   */
  public var startScanningAtLoad = true

  /**
   Flag to display the switch camera button.
   */
  public var showSwitchCameraButton = true

  /**
   Flag to display the toggle torch button. If the value is true and there is no torch the button will not be displayed.
   */
  public var showTorchButton = false

  /**
   Flag to display the cancel button.
   */
  public var showCancelButton = true
    
  // MARK: - Initializing a Flap View

  /**
  Initialize a QRCodeViewController builder with default values.
  */
  public init() {}

  /**
   Initialize a QRCodeViewController builder with default values.

   - parameter buildBlock: A QRCodeViewController builder block to configure itself.
   */
  public init(@noescape buildBlock: QRCodeViewControllerBuilderBlock) {
    buildBlock(builder: self)
  }
}