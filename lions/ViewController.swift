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
    @IBAction func nextButtonClicked(sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var firstTiger = Tiger(age: 3, name: "tigger", breed: "bengal", image: UIImage(named: "BengalTiger.jpg"))
        var secondTiger = Tiger(age: 5, name: "tigress", breed: "indo chinese", image: UIImage(named: "IndochineseTiger.jpg"))
        var thirdTiger = Tiger(age: 4, name: "jacob", breed: "siberian", image: UIImage(named: "SiberianTiger.jpg"))
        var fourthTiger = Tiger(age: 3, name: "spar", breed: "malayan", image: UIImage(named: "MalayanTiger.jpg"))
        
        var tigers = [ firstTiger, secondTiger, thirdTiger, fourthTiger ]
        
        imageView.image = firstTiger.image
        nameLabel.text = firstTiger.name
        ageLabel.text = "\(firstTiger.age)"
        breedLabel.text = firstTiger.breed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

