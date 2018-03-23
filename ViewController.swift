//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Luis Mendez on 3/23/18.
//  Copyright © 2018 Luis Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!
    
    // 1: Create a variable named randomBallIndex of Int and set to 0
    var randomBallIndex : Int = 0
    
    let diceArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateBallImages()//roll dice at startup
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //press button and function will be executed
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateBallImages()
    }
    
    //function to generate random picture
    func updateBallImages() {
        
        randomBallIndex = Int(arc4random_uniform(5))
        
        print("1: " + String(randomBallIndex))
        
        ballView.image = UIImage(named: diceArray[randomBallIndex])
    }
    
    //shake phone gesture function
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
  


}

