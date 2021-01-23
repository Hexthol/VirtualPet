//
//  Pet.swift
//  ZichenWang-Lab2
//
//  Created by 王梓辰 on 6/23/20.
//  Copyright © 2020 Zichen Wang. All rights reserved.
//

import Foundation

class Pet {
    //Data
    private (set) var happiness:Int
    private (set) var foodLevel:Int
    private (set) var playTimes:Int
    private (set) var feedTimes:Int
    private (set) var race:String
    private (set) var caressTimes:Int
    //Behavior
    func feed(){
        if foodLevel<10 {
            foodLevel+=1
            feedTimes+=1
        }
    }
    
    func play(){
        if foodLevel > 0 {
            happiness+=1
            foodLevel-=1
            playTimes+=1
            //reset caress times
            caressTimes = 0
        }
        if happiness >= 10{
            happiness = 10
        }
    }
    
    //Creative Portion
    func caress(){
        if caressTimes <= 5 {
            happiness+=1
            caressTimes+=1
        }else{
            happiness-=1
            caressTimes+=1
        }
        if happiness >= 10{
            happiness = 10
        }
        if happiness <= 0 {
            happiness = 0
        }
    }
    
    //Init
    init(name:String){
        happiness = 0
        foodLevel = 0
        playTimes = 0
        feedTimes = 0
        race = name
        caressTimes = 0
    }
    
}
