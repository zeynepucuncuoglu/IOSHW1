//
//  InputVC.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 29.10.2022.
//

import UIKit

protocol inputControllerDelegate{
    func inputControllerDidFinish(controller: InputVC, text: (String, String))
}

class InputVC: UIViewController {
    
    var pickerViewIndex: Int = 0
    var type = 0
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var radiusLabel: UILabel!
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var titlte: UINavigationItem!
    
    var delegate: inputControllerDelegate?
    var r = ""
    var h = ""

    @IBAction func onClickDoneBtn(_ sender: UIBarButtonItem) {
        r = radius.text!
        h = height.text!
        
        if type != 0 {
            if (r.isEmpty || h.isEmpty) {
                let mAlert = UIAlertController(title: "Entered Data", message: "TextFields cannot be empty", preferredStyle: .alert)
                mAlert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                self.present(mAlert, animated: true, completion: nil)
            }else{
                if let temp = delegate {
                    temp.inputControllerDidFinish(controller: self, text: (r, h))
                }
            }
        }else{
            if r.isEmpty {
                let mAlert = UIAlertController(title: "Entered Data", message: "TextFields cannot be empty", preferredStyle: .alert)
                mAlert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                self.present(mAlert, animated: true, completion: nil)
            }else{
                if let temp = delegate {
                    temp.inputControllerDidFinish(controller: self, text: (r, h))
                }
            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pickerViewIndex)
        
        switch type{
        case 0:
            heightLabel.isHidden = true
            height.isHidden = true
            titlte.title = "sphere"
        case 1:
            heightLabel.isHidden = false
            height.isHidden = false
            titlte.title = "Cone"
        case 2:
            heightLabel.isHidden = false
            height.isHidden = false
            titlte.title = "Cylinder"
        default:
            break
        }
        

        
    }
    
    
}
