//
//  AboutVC.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 30.10.2022.
//

import UIKit

class AboutVC: UIViewController {

    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var closeBtn: UIButton!
    
    var aboutColor :UIColor?
    var aboutFont : UIFont?
    var aboutText :String?
    var infoColor: UIColor?
    var infoFont : UIFont?
    var infoText : String?
    
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        aboutLabel.text = aboutText
        aboutLabel.font = aboutFont
        aboutLabel.textColor = aboutColor
        
        infoLabel.text = infoText
        infoLabel.font = infoFont
        infoLabel.textColor = infoColor
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
