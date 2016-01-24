//
//  PartListViewController.swift
//  rebrickit
//
//  Created by iosDevMacbookPro on 15/11/18.
//  Copyright © 2015年 doluvor. All rights reserved.
//

import UIKit
import SceneKit

class PartListViewController: UIViewController {

    @IBOutlet weak var sceneView: SCNView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let scene = SCNScene(named: "legoTest.dae")
        sceneView.scene = scene
        
        sceneView.allowsCameraControl = true
        sceneView.antialiasingMode = .Multisampling4X;
        sceneView.showsStatistics = true

//        let cameraNode = SCNNode()
//        cameraNode.camera = SCNCamera()
//        cameraNode.position = SCNVector3Make(0, 10, 20)
//        cameraNode.rotation = SCNVector4Make(1, 0, 0, -atan2(10.0, 20.0))
//        
//        scene?.rootNode.addChildNode(cameraNode)
//        
//        // A square box with sharp corners
//        // -------------------------------
//        let boxSide = 10.0; // A square box
//        let box = SCNBox(width: 10, height: 10, length: 10, chamferRadius: 1) // sharp corners
//        
//        let boxNode = SCNNode(geometry: box)
//        scene?.rootNode.addChildNode(boxNode)
//        
//        boxNode.rotation = SCNVector4Make(0.0, 1.0, 0.0, Float(M_PI / 5.0)) // a small angle
//
        let lightBlueColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)

        let light = SCNLight()
        light.type  = SCNLightTypeAmbient;
        light.color = lightBlueColor;
        
        let lightNode = SCNNode()
        lightNode.light    = light;
        scene?.rootNode.addChildNode(lightNode);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
