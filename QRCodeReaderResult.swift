//
//  AppDelegate.swift
//  LeitorQRCode
//
//  Created by Ronan on 8/21/16.
//  Copyright © 2016 RONAN. All rights reserved.
//


import Foundation

/**
 The result of the scan with its content value and the corresponding metadata type.
*/
public struct QRCodeReaderResult {
  /**
   The error corrected data decoded into a human-readable string.
   */
  public let value: String

  /**
   The type of the metadata.
   */
  public let metadataType: String
}