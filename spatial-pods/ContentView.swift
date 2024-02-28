//
//  ContentView.swift
//  spatial-pods
//
//  Created by spencer cap on 2/15/24.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    private let motionManager = MotionManager()
//    private var label: UILabel!

    
    
    @State var wordos = Text("bewm!")
    @State var msg = "" // CORRECT!
    
    
    
    private func setupLabel() {
//        label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50))
//        label.center = view.center
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        view.addSubview(label)
    }
//
    private func updateLabel(deviceMotion: CMDeviceMotion) {
        let attitude = deviceMotion.attitude
        let rotationRate = deviceMotion.rotationRate
        let gravity = deviceMotion.gravity
        let userAcceleration = deviceMotion.userAcceleration

//        let labelText = Text("""
//        Attitude: (pitch: \(attitude.pitch), roll: \(attitude.roll), yaw: \(attitude.yaw))
//        Rotation Rate: (x: \(rotationRate.x), y: \(rotationRate.y), z: \(rotationRate.z))
//        Gravity: (x: \(gravity.x), y: \(gravity.y), z: \(gravity.z))
//        User Acceleration: (x: \(userAcceleration.x), y: \(userAcceleration.y), z: \(userAcceleration.z))
//        """)

//        label.text = labelText
//        wordos.text = labelText
//        wordos = labelText
        
        print(attitude.pitch)
        
        self.msg = """
        Attitude: (pitch: \(attitude.pitch), roll: \(attitude.roll), yaw: \(attitude.yaw))
        Rotation Rate: (x: \(rotationRate.x), y: \(rotationRate.y), z: \(rotationRate.z))
        Gravity: (x: \(gravity.x), y: \(gravity.y), z: \(gravity.z))
        User Acceleration: (x: \(userAcceleration.x), y: \(userAcceleration.y), z: \(userAcceleration.z))
        """
    }
    
    
//    func daFunc() {
//        print("daFunc")
//        
//        
////        super.viewDidLoad()
//
//        setupLabel()
//
//        motionManager.startUpdates { [] (deviceMotion, error) in
//            guard let deviceMotion = deviceMotion else { return }
//            DispatchQueue.main.async {
////                self?.updateLabel(deviceMotion: deviceMotion)
////                self.updateLabel(deviceMotion: deviceMotion)
//                
//                updateLabel(deviceMotion: deviceMotion)
//            }
//        }
//    }
//    
    
    func fillMe(){
        print("fillling")
        self.msg = "Hello!!"
        
                motionManager.startUpdates { [] (deviceMotion, error) in
                    guard let deviceMotion = deviceMotion else { return }
                    DispatchQueue.main.async {
        //                self?.updateLabel(deviceMotion: deviceMotion)
        //                self.updateLabel(deviceMotion: deviceMotion)
        
                        updateLabel(deviceMotion: deviceMotion)
                    }
                }
    }
    
    
    
    // main view
    var body: some View {
        
//        override func viewDidLoad() {
//            super.viewDidLoad()
//
//            setupLabel()
//
//            motionManager.startUpdates { [weak self] (deviceMotion, error) in
//                guard let deviceMotion = deviceMotion else { return }
//                DispatchQueue.main.async {
//                    self?.updateLabel(deviceMotion: deviceMotion)
////                    self.updateLabel(deviceMotion: deviceMotion)
//                }
//            }
//        }
        
        
//        override func viewWillDisappear(_ animated: Bool) {
//            super.viewWillDisappear(animated)
//            motionManager.stopUpdates()
//        }
        
        
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Fill me!", action: {
                            fillMe()
                        })
//            Button("Push Me", action: { daFunc() })
//            Text(wordos)
        }
        .padding()
    }
    

    
}

#Preview {
    ContentView()
}




//import SwiftUI
//import AppKit

//import UIKit
//import CoreMotion
//
//class ViewController: UIViewController {
//    private let motionManager = MotionManager()
//    private var label: UILabel!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupLabel()
//
//        motionManager.startUpdates { [weak self] (deviceMotion, error) in
//            guard let deviceMotion = deviceMotion else { return }
//            DispatchQueue.main.async {
//                self?.updateLabel(deviceMotion: deviceMotion)
//            }
//        }
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        motionManager.stopUpdates()
//    }
//
//    private func setupLabel() {
//        label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50))
//        label.center = view.center
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        view.addSubview(label)
//    }
//
//    private func updateLabel(deviceMotion: CMDeviceMotion) {
//        let attitude = deviceMotion.attitude
//        let rotationRate = deviceMotion.rotationRate
//        let gravity = deviceMotion.gravity
//        let userAcceleration = deviceMotion.userAcceleration
//
//        let labelText = """
//        Attitude: (pitch: \(attitude.pitch), roll: \(attitude.roll), yaw: \(attitude.yaw))
//        Rotation Rate: (x: \(rotationRate.x), y: \(rotationRate.y), z: \(rotationRate.z))
//        Gravity: (x: \(gravity.x), y: \(gravity.y), z: \(gravity.z))
//        User Acceleration: (x: \(userAcceleration.x), y: \(userAcceleration.y), z: \(userAcceleration.z))
//        """
//
//        label.text = labelText
//    }
//}
//  
