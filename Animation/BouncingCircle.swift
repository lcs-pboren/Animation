//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class BouncingCircle: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x = 260
    var y = 260
    var dy = 1
    var dx = 1
    
    
    // This function runs once
    override init() {
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        
        // Slow down the animation
        canvas.framesPerSecond = 10
        
    }
        
    
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x -= 0
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: y ), width: 50, height: 50)
        x += 5
        y += 1
        if x >= 500 {
            dx -= 1
        } else if x == 0 {
            dx = 1
        }
        }
    }
    

