//
//  StickFigureView.swift
//  ExerciseCounter
//
//  Created by Rika Takashima on 11/10/2023.
//

import SwiftUI

struct StickFigureView: View {
    @ObservedObject var poseEstimator: PoseEstimator
    var size: CGSize
    
    var body: some View {
        if poseEstimator.bodyParts.isEmpty == false {
            ZStack {
                // Right Leg
                Stick(points: [poseEstimator.bodyParts[.rightAnkle]!.location,
                               poseEstimator.bodyParts[.rightKnee]!.location,
                               poseEstimator.bodyParts[.rightHip]!.location,
                               poseEstimator.bodyParts[.root]!.location], size: size)
                    .stroke(lineWidth: 5.0)
                    .fill(Color.blue)
                
                // Left Leg
                Stick(points: [poseEstimator.bodyParts[.leftAnkle]!.location,
                               poseEstimator.bodyParts[.leftKnee]!.location,
                               poseEstimator.bodyParts[.leftHip]!.location,
                               poseEstimator.bodyParts[.root]!.location], size: size)
                    .stroke(lineWidth: 5.0)
                    .fill(Color.blue)
                
                // Right Arm
                Stick(points: [poseEstimator.bodyParts[.rightWrist]!.location,
                               poseEstimator.bodyParts[.rightElbow]!.location,
                               poseEstimator.bodyParts[.rightShoulder]!.location,
                               poseEstimator.bodyParts[.neck]!.location], size: size)
                    .stroke(lineWidth: 5.0)
                    .fill(Color.blue)
                
                // Left Arm
                Stick(points: [poseEstimator.bodyParts[.leftWrist]!.location,
                               poseEstimator.bodyParts[.leftElbow]!.location,
                               poseEstimator.bodyParts[.leftShoulder]!.location,
                               poseEstimator.bodyParts[.neck]!.location], size: size)
                    .stroke(lineWidth: 5.0)
                    .fill(Color.blue)
                
                // Root to Nose
                Stick(points: [poseEstimator.bodyParts[.root]!.location,
                               poseEstimator.bodyParts[.neck]!.location,
                               poseEstimator.bodyParts[.nose]!.location], size: size)
                    .stroke(lineWidth: 5.0)
                    .fill(Color.blue)
            }
        }
    }
}
