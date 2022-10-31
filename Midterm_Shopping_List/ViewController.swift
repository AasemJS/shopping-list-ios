//
//  ViewController.swift
//  Midterm_Shopping_List
//
//  Created by Asem Javed Syed on 2022-10-30.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //stepper functionality
        stepper1.autorepeat = true
        stepper1.isContinuous = true
        stepperLbl1.text = Int(stepper1.value).description
        stepper1.maximumValue = 10
        stepper1.minimumValue = 0
        
        stepper2.autorepeat = true
        stepper2.isContinuous = true
        stepperLbl2.text = Int(stepper2.value).description
        stepper2.maximumValue = 10
        stepper2.minimumValue = 0
        
        stepper3.autorepeat = true
        stepper3.isContinuous = true
        stepperLbl3.text = Int(stepper3.value).description
        stepper3.maximumValue = 10
        stepper3.minimumValue = 0
        
        stepper4.autorepeat = true
        stepper4.isContinuous = true
        stepperLbl4.text = Int(stepper4.value).description
        stepper4.maximumValue = 10
        stepper4.minimumValue = 0
        
        stepper5.autorepeat = true
        stepper5.isContinuous = true
        stepperLbl5.text = Int(stepper5.value).description
        stepper5.maximumValue = 10
        stepper5.minimumValue = 0
    }
    
    // functionality for list name
    var newListName: String!
    
    @IBOutlet weak var listName: UILabel!
    
    @IBOutlet weak var editListName: UITextField!
    
    @IBAction func updateListName(_ sender: Any) {
        newListName = editListName.text!
        listName.text = "\(newListName!)"
        editListName.text?.removeAll()
    }
    
    
    
    //outlets for stepper functionality
    
    @IBOutlet weak var stepperLbl1: UITextField!
    
    @IBOutlet weak var stepperLbl2: UITextField!
    
    @IBOutlet weak var stepperLbl3: UITextField!
    
    @IBOutlet weak var stepperLbl4: UITextField!
    
    @IBOutlet weak var stepperLbl5: UITextField!
    
    @IBOutlet weak var stepper1: UIStepper!
    
    @IBOutlet weak var stepper2: UIStepper!
    
    @IBOutlet weak var stepper3: UIStepper!
    
    @IBOutlet weak var stepper4: UIStepper!
    
    @IBOutlet weak var stepper5: UIStepper!
    
    @IBAction func stepperAct1(_ sender: UIStepper) {
        stepperLbl1.text = Int(stepper1.value).description
    }
    
    @IBAction func stepperAct2(_ sender: UIStepper) {
        stepperLbl2.text = Int(stepper2.value).description
    }
    
    @IBAction func stepperAct3(_ sender: UIStepper) {
        stepperLbl3.text = Int(stepper3.value).description
    }
    
    @IBAction func stepperAct4(_ sender: UIStepper) {
        stepperLbl4.text = Int(stepper4.value).description
    }
    
    @IBAction func stepperAct5(_ sender: UIStepper) {
        stepperLbl5.text = Int(stepper5.value).description
    }
    
    @IBAction func cancelReset(_ sender: UIButton) {
        listName.text = "Shopping List"
        
        stepper1.value = 0
        self.stepperLbl1.text = "0"
        stepper2.value = 0
        self.stepperLbl2.text = "0"
        stepper3.value = 0
        self.stepperLbl3.text = "0"
        stepper4.value = 0
        self.stepperLbl4.text = "0"
        stepper5.value = 0
        self.stepperLbl5.text = "0"
        
    }
}
