//
//  ViewController.swift
//  Gyroscope
//
//  Created by Alberto Flores Ocaña on 9/16/19.
//  Copyright © 2019 Alberto Flores Ocaña. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xG: UITextField!
    @IBOutlet weak var yG: UITextField!
    @IBOutlet weak var zG: UITextField!
    
    var motion = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myGyroscope()
    }
    
    func myGyroscope() {
        motion.gyroUpdateInterval = 0.2
        motion.startGyroUpdates(to: OperationQueue.current!){ (data,error) in print(data as Any)
            if let trueData = data {
                self.view.reloadInputViews()
                let x = trueData.rotationRate.x
                let y = trueData.rotationRate.y
                let z = trueData.rotationRate.z
                self.xG.text = "x: \(Double(x).rounded(toPlaces: 3))"
                self.yG.text = "y: \(Double(y).rounded(toPlaces: 3))"
                self.zG.text = "z: \(Double(z).rounded(toPlaces: 3))"
            }
        }
    }
}

extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
