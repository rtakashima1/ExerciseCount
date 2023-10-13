//
//  CameraViewWrapper.swift
//  ExerciseCounter
//
//  Created by Rika Takashima on 11/10/2023.
//

import Foundation
import SwiftUI
import AVFoundation
import Vision

struct CameraViewWrapper: UIViewControllerRepresentable {
    var poseEstimator: PoseEstimator
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let cvc = CameraViewController()
        cvc.delegate = poseEstimator
        return cvc
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
