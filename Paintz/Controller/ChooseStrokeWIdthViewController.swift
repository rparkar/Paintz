//
//  ChooseStrokeWIdthViewController.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class ChooseStrokeWIdthViewController: UIViewController {

    //outlets
    @IBOutlet weak var strokeLineWidthSlider: UISlider!
    @IBOutlet weak var sampleLineWidthView: SampleOfLineWidthView!
    
    //variables
    var strokeWidth: CGFloat  = 2.5
    var delegate: ChooseStrokeWIdthViewControllerDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        strokeLineWidthSlider.value = Float(strokeWidth)
        sampleLineWidthView.sampleLine.lineWidth = strokeWidth
        sampleLineWidthView.setNeedsDisplay()
    }
    
    @IBAction func strokelineWidthChanged(_ sender: UISlider) {
        strokeWidth = CGFloat(sender.value)
        print(sender.value)
        sampleLineWidthView.sampleLine.lineWidth = strokeWidth
        sampleLineWidthView.setNeedsDisplay()
        
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.strokeLineWidthChanged(width: self.strokeWidth)
        }
    }
    
}
