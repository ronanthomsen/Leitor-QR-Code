//
//  AppDelegate.swift
//  LeitorQRCode
//
//  Created by Ronan on 8/21/16.
//  Copyright © 2016 RONAN. All rights reserved.
//


import UIKit

/// Overlay over the camera view to display the area (a square) where to scan the code.
final class ReaderOverlayView: UIView {
  private var overlay: CAShapeLayer = {
    var overlay = CAShapeLayer()
    overlay.backgroundColor = UIColor.clearColor().CGColor
    overlay.fillColor       = UIColor.clearColor().CGColor
    overlay.strokeColor     = UIColor.whiteColor().CGColor
    overlay.lineWidth       = 3
    overlay.lineDashPattern = [7.0, 7.0]
    overlay.lineDashPhase   = 0

    return overlay
    }()

  init() {
    super.init(frame: CGRectZero)  // Workaround for init in iOS SDK 8.3

    layer.addSublayer(overlay)
  }

  override init(frame: CGRect) {
    super.init(frame: frame)

    layer.addSublayer(overlay)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    layer.addSublayer(overlay)
  }

  override func drawRect(rect: CGRect) {
    var innerRect = CGRectInset(rect, 50, 50)
    let minSize   = min(innerRect.width, innerRect.height)

    if innerRect.width != minSize {
      innerRect.origin.x   += (innerRect.width - minSize) / 2
      innerRect.size.width = minSize
    }
    else if innerRect.height != minSize {
      innerRect.origin.y    += (innerRect.height - minSize) / 2
      innerRect.size.height = minSize
    }

    let offsetRect = CGRectOffset(innerRect, 0, 15)

    overlay.path  = UIBezierPath(roundedRect: offsetRect, cornerRadius: 5).CGPath
  }
}
