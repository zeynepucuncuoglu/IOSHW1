//
//  CalculationVCViewController.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 28.10.2022.
//

import UIKit

class CalculationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, inputControllerDelegate {
    
    
    @IBOutlet weak var inputBtn: UIButton!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var calculationPW: UIPickerView!
    
    var PWselection:Int=0
    
    @IBOutlet weak var calcIV: UIImageView!
    let calcArr = ["Sphere","Cone","Cylinder"]
    
    var data = [(String, String)]()
    
   
    
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue) {
        
    }
    
    func inputControllerDidFinish(controller: InputVC, text: (String, String)) {
                
        controller.navigationController?.popViewController(animated: true)
        
        let radius : Double = Double(text.0) ?? 0
        let height : Double = Double(text.1) ?? 0
        var area : Double = 0.0
        var volume : Double = 0.0
        
        switch PWselection {
        case 0:
            area = 4 * Double.pi * pow(radius, 2)
            volume = (4/3) * Double.pi * pow(radius, 3)
        case 1:
            area = Double.pi * radius * (radius + sqrt(pow(radius, 2) + pow(height, 2)))
            volume = (1/3) * Double.pi * pow(radius, 2) * height
        case 2:
            area = 2 * Double.pi * radius * height
            volume = Double.pi * pow(radius, 2) * height
        default:
            break
        }
        
        let message = "Surface Area=" + "\(String(format: "%.2f", area))" + "\nSurface Volume=" + "\(String(format: "%.2f", volume))"
        
        let mAlert = UIAlertController(title: "Result", message: message, preferredStyle: .alert)
        mAlert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
        self.present(mAlert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "inpID" {
            if let vc = segue.destination as? InputVC {
                vc.delegate = self
                vc.type = PWselection
            }
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return calcArr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return calcArr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch row{
        case 0:
            calcIV.image=UIImage(named: "sphere")
            PWselection=0
        case 1:
            calcIV.image=UIImage(named: "cone")
            PWselection=1
        case 2:
            calcIV.image=UIImage(named: "cylinder")
            PWselection=2
        default:
            calcIV.image=UIImage(named: "cone")
        }
        
        
    }
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calcIV.image=UIImage(named: "cone")
        //calculationPW.selectRow(1, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

