//
//  MotionManager.swift
//  spatial-pods
//
//  Created by spencer cap on 2/15/24.
//

import Foundation
import CoreMotion

//CMHeadphoneMotionManager

class MotionManager {
//    private let motionManager = CMMotionManager()
    
    private let motionManager = CMHeadphoneMotionManager()


    func startUpdates(handler: @escaping (CMDeviceMotion?, Error?) -> Void) {
        if motionManager.isDeviceMotionAvailable {
//            motionManager.deviceMotionUpdateInterval = 0.1
            motionManager.startDeviceMotionUpdates(to: .main, withHandler: handler)
        }
    }

    func stopUpdates() {
        if motionManager.isDeviceMotionAvailable {
            motionManager.stopDeviceMotionUpdates()
        }
    }
}
  
