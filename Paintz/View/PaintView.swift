//
//  PaintView.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class PaintView: UIView {
    
    //variables
    var strokeLineWidth : CGFloat = 2.5
    var drawingColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    private var finishedSquiggles: [SquiggleSquiggle] = []
    private var currentSquiggle: [UITouch: SquiggleSquiggle] = [:]
    
    var image : UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0.0)
        
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.isMultipleTouchEnabled = true
        
    }
    
    override func draw(_ rect: CGRect) {
        for squiggles in finishedSquiggles{
            squiggles.stroke()
        }
        
        for squiggles in currentSquiggle.values {
            squiggles.stroke()
        }
    }

    func undo() {
        if finishedSquiggles.count > 0 {
            finishedSquiggles.removeLast()
            self.setNeedsDisplay()
        }
    }
    
    func clear() {
        finishedSquiggles.removeAll()
        self.setNeedsDisplay()
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let squiggle = SquiggleSquiggle(color: drawingColor, strokeLineWidth: strokeLineWidth)
            squiggle.move(to: touch.location(in: self))
            currentSquiggle[touch] = squiggle
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            currentSquiggle[touch]?.addLine(to: touch.location(in: self))
            setNeedsDisplay()
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            if  let squiggle = currentSquiggle[touch]{
                finishedSquiggles.append(squiggle)
            }
            
            currentSquiggle[touch] = nil
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        currentSquiggle.removeAll()
    }
    
}
