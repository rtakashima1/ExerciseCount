//
//  CameraView.swift
//  ExerciseCounter
//
//  Created by Rika Takashima on 10/10/2023.
//

import SwiftUI
import AVFoundation

final class CameraView: UIView {
    override class var layerClass: AnyClass {
        AVCaptureVideoPreviewLayer.self
    }
    var previewLayer: AVCaptureVideoPreviewLayer {
        layer as! AVCaptureVideoPreviewLayer
      }
}
