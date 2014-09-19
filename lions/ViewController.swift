//
//  ViewController.swift
//  lions
//
//  Created by vivek on 19/09/14.
//  Copyright (c) 2014 vivek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    var tigers:Array<Tiger> = []
    var currentTigerIndex:Int = 0
    
    @IBAction func nextButtonClicked(sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(UInt32(tigers.count)))
        let tiger = tigers[randomNumber]
        showTiger(tiger)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var firstTiger = Tiger(age: 3, name: "tigger", breed: "bengal", image: UIImage(named: "BengalTiger.jpg"))
        var secondTiger = Tiger(age: 5, name: "tigress", breed: "indo chinese", image: UIImage(named: "IndochineseTiger.jpg"))
        var thirdTiger = Tiger(age: 4, name: "jacob", breed: "siberian", image: UIImage(named: "SiberianTiger.jpg"))
        var fourthTiger = Tiger(age: 3, name: "spar", breed: "malayan", image: UIImage(named: "MalayanTiger.jpg"))
        
        tigers += [ firstTiger, secondTiger, thirdTiger, fourthTiger ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showTiger(tiger: Tiger){
        UIView.transitionWithView(
            self.view,
            duration: 2,
            options: UIViewAnimationOptions.TransitionCrossDissolve,
            animations: {
                self.imageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
            },
            completion: {
                (finished: Bool) -> () in
            }
        )
    }


}

