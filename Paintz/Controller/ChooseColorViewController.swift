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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func colorOfSliderChanged(_ sender: Any) {
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
    }
    

}
