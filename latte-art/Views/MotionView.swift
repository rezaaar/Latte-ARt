//
//  MotionView.swift
//  latte-art
//
//  Created by Reza Athallah Rasendriya on 26/04/24.
//

import SwiftUI
import CoreMotion

struct MotionView: View {
    let motion = CMMotionManager()
    @State var datax: Double = 0.0
    @State var datay: Double = 0.0
    @State var dataz: Double = 0.0
    @State var timer: Timer?
    var body: some View {
        if motion.isDeviceMotionAvailable {
            Button(action: startDeviceMotion, label: {
                Text("Start Motion from git")
            })
            Text("Hello available x :\(datax), y :\(datay), z :\(dataz)")
        } else {
            Text("Hello unavilable test")
        }
        
    }
    
    func startDeviceMotion() {
        if motion.isDeviceMotionAvailable {
            self.motion.deviceMotionUpdateInterval = 1.0 / 50.0
            self.motion.showsDeviceMovementDisplay = true
            self.motion.startDeviceMotionUpdates(using: .xMagneticNorthZVertical)
            
            // Configure a timer to fetch the motion data.
            self.timer = Timer(fire: Date(), interval: (1.0 / 50.0), repeats: true,
                               block: { (timer) in
                                if let data = self.motion.deviceMotion {
                                    // Get the attitude relative to the magnetic north reference frame.
                                    let x = data.attitude.pitch
                                    let y = data.attitude.roll
                                    let z = data.attitude.yaw
                                    
                                    datax = x
                                    datay = y
                                    dataz = z
                                    // Use the motion data in your app.
                                }
            })
            
            // Add the timer to the current run loop.
            RunLoop.current.add(self.timer!, forMode: RunLoop.Mode.default)
        }
    }
}

#Preview {
    MotionView()
}
