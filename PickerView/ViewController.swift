//
//  ViewController.swift
//  PickerView
//
//  Created by Brendon Zach on 2/28/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var pickerViewOutlet: UIPickerView!
    
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    //array variable which is a collection of values.
    var pickerValues = ["Alpha", "Beta", "Gamma", "Delta"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 1
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { return pickerValues.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { pickerValues[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        view.endEditing(true)
        
        switch row
        {
        case 0:
            textFieldOutlet.text = "A"
        case 1:
            textFieldOutlet.text = "B"
        case 2:
            textFieldOutlet.text = "C"
        case 3:
            textFieldOutlet.text = "D"
        default:
            textFieldOutlet.text = "No Segment Selected"
            
            
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerViewOutlet.dataSource = self
        pickerViewOutlet.delegate = self
        
    }


}

