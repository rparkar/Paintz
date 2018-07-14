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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func strokelineWidthChanged(_ sender: Any) {
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
