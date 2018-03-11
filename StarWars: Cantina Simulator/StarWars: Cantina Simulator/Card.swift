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
    
    func otherValue() ->RawValue{
        return self.rawValue * -1
    }
}

class SimpleCards{
    let value: CardType
    let texture: SKTexture
    
    init(value: CardType){
        self.value = value
        
        switch value {
        case .one:
            texture = SKTexture(image: #imageLiteral(resourceName: "simple_one_card"))
        case .two:
            texture = SKTexture(image: #imageLiteral(resourceName: "simple_two_card"))
        case .three:
            texture = SKTexture(image: #imageLiteral(resourceName: "simple_three_card"))
        case .four:
            texture = SKTexture(image: #imageLiteral(resourceName: "simple_four_card"))
        case .five:
            texture = SKTexture(image: #imageLiteral(resourceName: "simple_five_card"))
        case .six:
            texture = SKTexture(image: #imageLiteral(resourceName: "simple_six_card"))
        case .minus_six: //ilyen értékeket nem kaphat
            fallthrough
        case .minus_five:
            fallthrough
        case .minus_four:
            fallthrough
        case .minus_three:
            fallthrough
        case .minus_two:
            fallthrough
        case .minus_one:
            texture = SKTexture(imageNamed: "back_card")
        }
    }
}

class Card{
    let value: CardType
    let frontTexture: SKTexture
    let backTexture: SKTexture
    var faceUp = true
    var texture: SKTexture
    //there are cards where we will decide if its + or -
    var multi_valued: Bool = false
    
    init(value: CardType, multi_value: Bool) {
        self.value = value
        self.multi_valued = multi_value
        backTexture = SKTexture(imageNamed: "back_card")
        
        if(multi_valued == true){
            switch value{
            case .minus_six:
                frontTexture = SKTexture(imageNamed: "pm_six_card")
            case .minus_five:
                frontTexture = SKTexture(imageNamed: "pm_five_card")
            case .minus_four:
                frontTexture = SKTexture(imageNamed: "pm_four_card")
            case .minus_three:
                frontTexture = SKTexture(imageNamed: "pm_three_card")
            case .minus_two:
                frontTexture = SKTexture(imageNamed: "pm_two_card")
            case .minus_one:
                frontTexture = SKTexture(imageNamed: "pm_one_card")
            case .one:
                frontTexture = SKTexture(imageNamed: "pm_one_card")
            case .two:
                frontTexture = SKTexture(imageNamed: "pm_two_card")
            case .three:
                frontTexture = SKTexture(imageNamed: "pm_three_card")
            case .four:
                frontTexture = SKTexture(imageNamed: "pm_four_card")
            case .five:
                frontTexture = SKTexture(imageNamed: "pm_five_card")
            case .six:
                frontTexture = SKTexture(imageNamed: "pm_six_card")
            }
            texture = frontTexture
        }
        else{
            
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


