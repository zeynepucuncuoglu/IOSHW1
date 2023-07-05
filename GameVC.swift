//
//  GameVCViewController.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 30.10.2022.
//

import UIKit

class GameVC: UIViewController {

    
    var entryPoint = 0
    var color = 0
    
    
    @IBOutlet var stackView: [UIView]!
    
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //createStackView()
        
        if entryPoint % 2 == 0 {
            switch color{
            case 0:
                stackView[2].backgroundColor = .red
                stackView[4].backgroundColor = .red
                stackView[6].backgroundColor = .red
            case 1:
                stackView[2].backgroundColor = .green
                stackView[4].backgroundColor = .green
                stackView[6].backgroundColor = .green
            case 2:
                stackView[2].backgroundColor = .blue
                stackView[4].backgroundColor = .blue
                stackView[6].backgroundColor = .blue
            case 3:
                stackView[2].backgroundColor = .yellow
                stackView[4].backgroundColor = .yellow
                stackView[6].backgroundColor = .yellow
            case 4:
                stackView[2].backgroundColor = .systemPink
                stackView[4].backgroundColor = .systemPink
                stackView[6].backgroundColor = .systemPink
            default:
            break;
            }
           
        }else{
            switch color{
            case 0:
                stackView[0].backgroundColor = .red
                stackView[4].backgroundColor = .red
                stackView[5].backgroundColor = .red
            case 1:
                stackView[0].backgroundColor = .green
                stackView[4].backgroundColor = .green
                stackView[8].backgroundColor = .green
            case 2:
                stackView[0].backgroundColor = .blue
                stackView[4].backgroundColor = .blue
                stackView[8].backgroundColor = .blue
            case 3:
                stackView[0].backgroundColor = .yellow
                stackView[4].backgroundColor = .yellow
                stackView[8].backgroundColor = .yellow
            case 4:
                stackView[0].backgroundColor = .systemPink
                stackView[4].backgroundColor = .systemPink
                stackView[8].backgroundColor = .systemPink
            default:
                break;
            }
      
        }
        
    }
    
    /*
    func createStackView(){
    
        
        let subStackView = UIStackView()
        view.addSubview(subStackView)
        
        subStackView.frame = view.bounds
        subStackView.axis = .horizontal
        subStackView.distribution = .fillEqually
        subStackView.spacing = 20
        
        for i 0..2{
            
            let ImageView = UIImageView()
            ImageView.backgroundColor = .systemGreen
            //ImageView.contentMode = .scaleAspectFit
            ImageView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
            ImageView.heightAnchor.constraint(equalToConstant: view.frame.size.height/3).isActive = true
            
            
        }
        */
        

        
        
        
    }


  


