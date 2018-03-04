//
//  Card.swift
//  StarWars: Cantina Simulator
//
//  Created by Student on 2018. 03. 04..
//  Copyright © 2018. Student. All rights reserved.
//

import Foundation
import SpriteKit

enum CardType: Int{
    case minus_six = -6,
    minus_five, //-5
    minus_four, //-4
    minus_three, //-3
    minus_two, //-2
    minus_one, //-1
    one = 1,
    two, //2
    three, //3
    four, //4
    five, //5
    six //6
    
}

class Card{
    let value: CardType
    let frontTexture: SKTexture
    let backTexture: SKTexture
    var faceUp = true
    var texture: SKTexture
    // TODO: var multi_value: Bool ezen még elgondolkozom hogy hogyan valósítsam meg
    
    init(value: CardType) {
        self.value = value
        backTexture = SKTexture(imageNamed: "card_back")
        
        switch value{
        case .minus_six:
            frontTexture = SKTexture(imageNamed: "minus_six_card")
        case .minus_five:
            frontTexture = SKTexture(imageNamed: "minus_five_card")
        case .minus_four:
            frontTexture = SKTexture(imageNamed: "minus_four_card")
        case .minus_three:
            frontTexture = SKTexture(imageNamed: "minus_three_card")
        case .minus_two:
            frontTexture = SKTexture(imageNamed: "minus_two_card")
        case .minus_one:
            frontTexture = SKTexture(imageNamed: "minus_one_card")
        case .one:
            frontTexture = SKTexture(imageNamed: "one_card")
        case .two:
            frontTexture = SKTexture(imageNamed: "two_card")
        case .three:
            frontTexture = SKTexture(imageNamed: "three_card")
        case .four:
            frontTexture = SKTexture(imageNamed: "four_card")
        case .five:
            frontTexture = SKTexture(imageNamed: "five_card")
        case .six:
            frontTexture = SKTexture(imageNamed: "six_card")
        }
        
        texture = frontTexture
        
    }
    
    func flip(){
        if faceUp {
            self.texture = backTexture
        }
        else{
            self.texture = frontTexture
        }
        faceUp = !faceUp
    }
    
    func simpleDescription() -> String{
        return "The \(value) card!"
    }
    
}

