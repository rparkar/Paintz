//
//  SampleOfLineWidthView.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class SampleOfLineWidthView: UIView {

    var sampleLine = UIBezierPath()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let y = frame.height / 2
        sampleLine.move(to: CGPoint(x: 10, y: y))
        sampleLine.addLine(to: CGPoint(x: frame.width - 10 , y: y))
        
    }
    
    override func draw(_ rect: CGRect) {
        UIColor.black.setStroke()
        sampleLine.stroke()
    }

}
