//
//  ViewController.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 28.10.2022.
//

import UIKit

class StartVC: UIViewController ,UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var StartLabel: UILabel!
    @IBOutlet weak var StartSegment: UISegmentedControl!
    @IBOutlet weak var gamePicker: UIPickerView!
    
    let tapRecognizer = UITapGestureRecognizer()
    let longPressRecognizer = UILongPressGestureRecognizer()
    
    let gameArr = ["Red","Green","Blue","yellow","Pink"]
    var entry = 0
    var selectedColor = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gameArr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return gameArr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        selectedColor = row
        
       
    }
    
    @objc func longPressedView() {
        switch StartSegment.selectedSegmentIndex{
        case 0:
            performSegue(withIdentifier: "calcID", sender: self)
        case 1:
            performSegue(withIdentifier: "whtrID", sender: self)
        case 2:
            performSegue(withIdentifier: "gameID", sender: self)
            entry  = entry + 1
        case 3:
            performSegue(withIdentifier: "playerID", sender: self)
        case 4:
            performSegue(withIdentifier: "aboutID", sender: self)
        default:
            break

        }
            
       
    }
    
    @objc func tappedView() {
        switch StartSegment.selectedSegmentIndex{
        case 0:
            StartLabel.text = "LongPress Image to open WHtr Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "whtr")
            StartSegment.selectedSegmentIndex=1
            gamePicker.isHidden = true
        case 1:
            StartLabel.text = "LongPress Image to open Game Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "game")
            StartSegment.selectedSegmentIndex=2
            gamePicker.isHidden = false


        case 2:
            StartLabel.text = "LongPress Image to open Player Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "player")
            StartSegment.selectedSegmentIndex=3
            gamePicker.isHidden = true


        case 3:
            StartLabel.text = "LongPress Image to open About Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "about")
            StartSegment.selectedSegmentIndex=4
            gamePicker.isHidden = true


        case 4:
            
            StartLabel.text = "LongPress Image to open Calculation Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "calculation")
            StartSegment.selectedSegmentIndex=0
            gamePicker.isHidden = true

        default:
            break

        }
      
    }

    
    @IBAction func segmentchanged(_ sender: UISegmentedControl) {
        
        switch StartSegment.selectedSegmentIndex{
        case 0:
            StartLabel.text = "LongPress Image to open Calculation Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "calculation")
            gamePicker.isHidden = true

        case 1:
            StartLabel.text = "LongPress Image to open WHtr Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "whtr")
            gamePicker.isHidden = true


        case 2:
            StartLabel.text = "LongPress Image to open Game Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "game")
            gamePicker.isHidden = false


        case 3:
            StartLabel.text = "LongPress Image to open Player Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "player")
            gamePicker.isHidden = true


        case 4:
            StartLabel.text = "LongPress Image to open About Controller"
            StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
            StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
            ImageView.image=UIImage(named: "about")
            gamePicker.isHidden = true


        default:
            break

        }
      
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        StartLabel.text = "LongPress Image to open Calculation Controller"
        StartLabel.textColor=UIColor(red:0.0,green: 1.0,blue:0.2, alpha:1.0)
        StartLabel.font=UIFont(name:"HelveticaNeue-Bold",size:18.0)
        ImageView.image=UIImage(named: "calculation")
        
        longPressRecognizer.addTarget(self, action: #selector(StartVC.longPressedView))
        tapRecognizer.addTarget(self, action: #selector(StartVC.tappedView))
        
        ImageView.addGestureRecognizer(longPressRecognizer)
        ImageView.addGestureRecognizer(tapRecognizer)
        
        ImageView.isUserInteractionEnabled = true
        ImageView.isUserInteractionEnabled = true
        gamePicker.isHidden = true
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameID" {
            let vc = segue.destination as! GameVC
            
            vc.color = selectedColor
            vc.entryPoint = entry
        }else if segue.identifier == "aboutID"{
            let vc = segue.destination as! AboutVC
            
            vc.aboutText = "About Controller"
            vc.aboutFont = UIFont(name: "HelveticaNeue-Bold", size: 24.0)
            vc.aboutColor = UIColor.purple
            
            vc.infoText = "CTIS 480 : Homework 1"
            vc.infoFont = UIFont(name: "HelveticaNeue-Bold", size: 24.0)
            vc.infoColor = UIColor.red
            
        
        }
    }
    
    


}

