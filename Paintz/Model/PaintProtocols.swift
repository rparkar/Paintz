//
//  PaintProtocols.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

protocol ChooseColorViewControllerDelegate {
    
    func colorChanged(color: UIColor)
    
}

protocol ChooseStrokeWIdthViewControllerDelegate {
    
    func strokeLineWidthChanged(width: CGFloat)
    
}
