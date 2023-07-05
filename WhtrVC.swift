//
//  WhtrVC.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 30.10.2022.
//

import UIKit

class WhtrVC: UIViewController {
    
    
    
    @IBOutlet weak var calcBtn: UIButton!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var whtrRes: UILabel!
    @IBOutlet weak var whtrLabel: UILabel!
    @IBOutlet weak var gender: UISwitch!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var waist: UITextField!
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue) {
        
    }
    
    @IBAction func onClickCalculate(_ sender: Any) {
        
        var waist = Double(waist.text!) ?? 0.0
        var heigth = Double(height.text!) ?? 0.0
        let res = waist / heigth * 100
        
        if gender.isOn == true{
            whtrLabel.text = "WHtR:(Female)"
            
            switch res{
            case _ where res < 35 :
                result.text = "Abnormally Slim to Underweight"
            case 35...42:
                result.text = "Extremely slim"
            case 42...46:
                result.text = " Slender and Healthy"
            case 46...49:
                result.text = " Healthy, Normal Weight"
            case 49...54:
                result.text = "Overweight"
            case 54...58:
                result.text = "Extremely Overweight/Obese"
            case _ where res > 58:
                result.text = "Highly Obese"
            default:
                break;
                
            }
            
        }else{
            whtrLabel.text = "WHtR:(Male)"
            switch res{
            case _ where res < 35 :
                result.text = "Abnormally Slim to Underweight"
            case 35...43:
                result.text = "Extremely slim"
            case 43...46:
                result.text = " Slender and Healthy"
            case 46...53:
                result.text = " Healthy, Normal Weight"
            case 53...58:
                result.text = "Overweight"
            case 58...63:
                result.text = "Extremely Overweight/Obese"
            case _ where res > 63:
                result.text = "Highly Obese"
            default:
                break;
                
            }
            
        }
        whtrLabel.isHidden = false
        whtrRes.text = String(res)
        whtrRes.textColor=UIColor.gray
        whtrRes.isHidden = false
        result.isHidden  = false
        
        
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        whtrLabel.isHidden = true
        whtrRes.isHidden = true
        result.isHidden = true
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
