//
//  inputView.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 29.10.2022.
//

import UIKit

@IBDesignable

class inputView: UIView {
    
    @IBInspectable var cornerRadius:CGFloat = 5{
        didSet{
            self.updateUIView()
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = 1{
        didSet{
            self.updateUIView()
        }
    }
    
    @IBInspectable var shadowOpacity:Float = 5{
        didSet{
            self.updateUIView()
        }
    }
    
    @IBInspectable var shadowOffset:CGSize = CGSize(width: 5, height: 5){
        didSet{
            self.updateUIView()
        }
    }
   
        
        
        
    func updateUIView(){
        self.layer.cornerRadius=self.cornerRadius
        self.layer.borderWidth=self.borderWidth
        self.layer.shadowOpacity=self.shadowOpacity
        self.layer.shadowOffset=self.shadowOffset
    }
}
