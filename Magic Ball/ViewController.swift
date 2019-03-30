//
//  ViewController.swift
//  Magic Ball
//
//  Created by Sree Sai Raghava Dandu on 30/03/19.
//  Copyright © 2019 Sree Sai Raghava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallIndex : Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateMagicBall()
    }

    @IBAction func askMeButton(_ sender: UIButton) {
        updateMagicBall()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }
    func updateMagicBall(){
        
        randomBallIndex = Int.random(in: 0 ... 4)
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
        print(randomBallIndex)
    }
}

