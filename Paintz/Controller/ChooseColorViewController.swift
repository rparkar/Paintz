//
//  ChooseColorViewController.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class ChooseColorViewController: UIViewController {

    //outlets
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorSelectedView: UIView!
    
    //variables
    var color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    var delegate: ChooseColorViewControllerDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var alpha : CGFloat = 0.0
        var red : CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue : CGFloat = 0.0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        alphaSlider.value = Float(alpha)
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
        colorSelectedView.backgroundColor = color
        
        
    }
    
    
    @IBAction func colorOfSliderChanged(_ sender: Any) {
        
        colorSelectedView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        color = colorSelectedView.backgroundColor!
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.colorChanged(color: self.color)
        }
    }
    

}
