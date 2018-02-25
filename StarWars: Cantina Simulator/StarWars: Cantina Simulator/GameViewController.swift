//
//  GameViewController.swift
//  StarWars: Cantina Simulator
//
//  Created by Student on 2018. 02. 25..
//  Copyright © 2018. Student. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var gameView: SCNView!
    var gameScene: SCNScene!
    var cameraNode: SCNNode!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScene()
        setupCamera()
        spawnShape()
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupView(){
        gameView = self.view as! SCNView
        
        gameView.showsStatistics = true
        gameView.allowsCameraControl = true
        gameView.autoenablesDefaultLighting=true
    }
    
    func setupScene(){
        gameScene = SCNScene()
        gameView.scene = gameScene
    }

    func setupCamera(){
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 10)
        gameScene.rootNode.addChildNode(cameraNode)
    }
    
    func spawnShape(){
        var geometry:SCNGeometry
        switch ShapeType.random() {
        default:
            geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        }
        let geometryNode = SCNNode(geometry: geometry)
        gameScene.rootNode.addChildNode(geometryNode)
    }
    
}
