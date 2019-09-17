//
//  ViewController.swift
//  Accelerometre
//
//  Created by Alberto Flores Ocaña on 9/16/19.
//  Copyright © 2019 Alberto Flores Ocaña. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xA: UITextField!
    @IBOutlet weak var yA: UITextField!
    @IBOutlet weak var zA: UITextField!
    
    var motion = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accelerometer()
    }
    
    func accelerometer() {
        print("Start Accelerometer")
        motion.accelerometerUpdateInterval = 0.2
        motion.startAccelerometerUpdates(to: OperationQueue.current!) {
            (data, error) in
            print(data as Any)
            if let trueData =  data {
                
                self.view.reloadInputViews()
                let x = trueData.acceleration.x
                let y = trueData.acceleration.y
                let z = trueData.acceleration.z
                self.xA!.text = "x: \(Double(x).rounded(toPlaces :3))"
                self.yA!.text = "y: \(Double(y).rounded(toPlaces :3))"
                self.zA!.text = "z: \(Double(z).rounded(toPlaces :3))"
            }
        }
    }
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
