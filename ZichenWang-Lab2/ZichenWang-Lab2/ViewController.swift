//
//  ViewController.swift
//  ZichenWang-Lab2
//
//  Created by 王梓辰 on 6/23/20.
//  Copyright © 2020 Zichen Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //I use exclamation mark instead of question mark
    //because I know I will assign value to these variables in viewDidLoad()
    var dog:Pet!
    var cat:Pet!
    var bird:Pet!
    var bunny:Pet!
    var fish:Pet!
    
    var currpet:Pet!

    @IBOutlet weak var background: UIView!
    @IBOutlet weak var petimage: UIImageView!
    @IBOutlet weak var happinessBar: DisplayView!
    @IBOutlet weak var foodlevelBar: DisplayView!
    @IBOutlet weak var playtimes: UILabel!
    @IBOutlet weak var fedtimes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Initialize varibales
        dog = Pet(name: "Dog")
        cat = Pet(name: "Cat")
        bird = Pet(name: "Bird")
        bunny = Pet(name: "Bunny")
        fish = Pet(name: "Fish")
        currpet = dog
        
        //Start with Pet dog
        //Extra Credit: UIColor encompasses colors for both light and dark mode. Check them in assets
        background.backgroundColor = UIColor(named: "dogColor")
        petimage.image = UIImage(named: "dog")
        happinessBar.color = UIColor(named: "dogColor")!
        foodlevelBar.color = UIColor(named: "dogColor")!
        updateView()
    }
    
    //Creative Portion: caress when the user click the image of the pet
    @IBAction func caressAction(_ sender: Any) {
        currpet.caress()
        updateView()
    }
    
    //Two required functionality
    @IBAction func playAction(_ sender: Any) {
        currpet.play()
        updateView()
    }
    
    @IBAction func feedAction(_ sender: Any) {
        currpet.feed()
        updateView()
    }
    
    //Five race buttons functionality
    @IBAction func dogMode(_ sender: Any) {
        currpet = dog
        background.backgroundColor = UIColor(named: "dogColor")
        petimage.image = UIImage(named: "dog")
        happinessBar.color = UIColor(named: "dogColor")!
        foodlevelBar.color = UIColor(named: "dogColor")!
        updateView()
    }
    
    @IBAction func catMode(_ sender: Any) {
        currpet = cat
        background.backgroundColor = UIColor(named: "catColor")
        petimage.image = UIImage(named: "cat")
        happinessBar.color = UIColor(named: "catColor")!
        foodlevelBar.color = UIColor(named: "catColor")!
        updateView()
    }
    
    @IBAction func birdMode(_ sender: Any) {
        currpet = bird
        background.backgroundColor = UIColor(named: "birdColor")
        petimage.image = UIImage(named: "bird")
        happinessBar.color = UIColor(named: "birdColor")!
        foodlevelBar.color = UIColor(named: "birdColor")!
        updateView()
    }
    
    @IBAction func bunnyMode(_ sender: Any) {
        currpet = bunny
        background.backgroundColor = UIColor(named: "bunnyColor")
        petimage.image = UIImage(named: "bunny")
        happinessBar.color = UIColor(named: "bunnyColor")!
        foodlevelBar.color = UIColor(named: "bunnyColor")!
        updateView()
    }
    
    @IBAction func fishMode(_ sender: Any) {
        currpet = fish
        background.backgroundColor = UIColor(named: "fishColor")
        petimage.image = UIImage(named: "fish")
        happinessBar.color = UIColor(named: "fishColor")!
        foodlevelBar.color = UIColor(named: "fishColor")!
        updateView()
    }
    
    //update the view whenever a change is made
    func updateView(){
        playtimes.text = "played: \(currpet.playTimes)"
        fedtimes.text = "fed: \(currpet.feedTimes)"
        let happinessValue = Double(currpet.happiness)/10
        happinessBar.animateValue(to: CGFloat(happinessValue))
        let foodValue = Double(currpet.foodLevel)/10
        foodlevelBar.animateValue(to: CGFloat(foodValue))
    }

}

