//
//  PazaakScene.swift
//  StarWars: Cantina Simulator
//
//  Created by Student on 2018. 03. 08..
//  Copyright © 2018. Student. All rights reserved.
//

import UIKit
import SpriteKit

class PazaakScene: SKScene {
    
    let standBtn = SKSpriteNode(imageNamed: "standBtn")
    let endturnBtn = SKSpriteNode(imageNamed: "endBtn")
    
    let instructionText = SKLabelNode(text: "Place your bet!")
    
    
    
    override func didMove(to view: SKView) {
        setupTabel()
        setupButtons()
    }
    
    func setupTabel(){
        let table = SKSpriteNode(imageNamed: "table")
        addChild(table)
        table.position = CGPoint(x: size.width/2, y: size.height/2)
        table.zPosition = -1
        instructionText.fontColor = UIColor.black
        addChild(instructionText)
        instructionText.position = CGPoint(x: size.width/2, y: 400.0)
    }
    
    func setupButtons(){
        standBtn.name = "standBtn"
        addChild(standBtn)
        standBtn.position = CGPoint(x: 300.0, y: 40.0)
        
        endturnBtn.name = "endBtn"
        addChild(endturnBtn)
        endturnBtn.position = CGPoint(x: 450.0, y: 40.0)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        let touchLocation = touch.location(in: self)
        let touchNode = self.atPoint(touchLocation)
        
        
    }
}
