//
//  MainViewController.swift
//  Paintz
//
//  Created by Rehan Parkar on 2018-07-14.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, ChooseColorViewControllerDelegate, ChooseStrokeWIdthViewControllerDelegate {

    //outlets
    @IBOutlet weak var paintView: PaintView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func colorChanged(color: UIColor) {
        paintView.drawingColor = color
        
    }
    
    func strokeLineWidthChanged(width: CGFloat) {
        paintView.strokeLineWidth = width
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "chooseColorVC"  {
            let destination = segue.destination as! ChooseColorViewController
            destination.color = paintView.drawingColor
            
        } else if segue.identifier == "chooseStrokeWidthVC" {
            let destination = segue.destination as! ChooseStrokeWIdthViewController

            destination.strokeWidth = paintView.strokeLineWidth
            destination.delegate = self
        }
        
    }
    
    func showClearDialog() {
        
        let alertController = UIAlertController(title: "Are you sure?", message: "Hit delete to erase your sketch", preferredStyle: UIAlertControllerStyle.alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive) { (action) in
            self.paintView.clear()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        present(alertController, animated: true, completion: nil)
        
        
    }
    
    @IBAction func undoButtonPressed(_ sender: Any) {
    
        paintView.undo()
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        showClearDialog()
    }
    
    @IBAction func actionButtonPressed(_ sender: Any) {
    }
    
    
    
}

