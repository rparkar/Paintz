//
//  SquiggleSquiggle.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class SquiggleSquiggle: UIBezierPath {
    
    var color: UIColor
    

    init(color: UIColor, strokeLineWidth: CGFloat) {
        
        self.color = color
        super.init()
        self.lineWidth = strokeLineWidth
        self.lineCapStyle = .round
        self.lineCapStyle = .round
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder hasnt been implemented")
    }
    
    override func stroke() {
        color.setStroke()
        super.stroke()

    }

}
