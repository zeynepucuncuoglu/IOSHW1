//
//  PlayerVC.swift
//  ZeynepGoksuUcuncuoglu_HW1
//
//  Created by Zeynep Üçüncüoğlu on 30.10.2022.
//

import UIKit

class PlayerVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    

    var teamPlayers = [String]()
    var selectedPlayers = [String]()

    @IBOutlet weak var gsIV: UIImageView!
    @IBOutlet weak var fbIV: UIImageView!
    @IBOutlet weak var bjkIV: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue) {
        
    }
    
    func fillArray(team: String) {
        if let path = Bundle.main.path(forResource: "players", ofType: "plist") {
            if let dictArray = NSArray(contentsOfFile: path) {
                for item in dictArray {
                    if let dict = item as? NSDictionary {
                        if (dict.allKeys[0] as! String) == team {
                            teamPlayers.append(dict.allValues[0] as! String)
                        }
                    }
                }
            }
        }
    }
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        teamPlayers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamPlayers[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPlayers.append(teamPlayers[row])
        tableView.reloadData()
        print(selectedPlayers)
    }
    
    @objc func imageViewTapped(sender: UITapGestureRecognizer) {
        if let iV = sender.view as? UIImageView {
            switch iV.tag {
            case 1:
                teamPlayers.removeAll()
                fillArray(team: "besiktas")
            case 2:
                teamPlayers.removeAll()
                fillArray(team: "fenerbahce")
            case 3:
                teamPlayers.removeAll()
                fillArray(team: "galatasaray")
            default:
                break
            }
            
            pickerView.reloadAllComponents()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selectedPlayers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = selectedPlayers[indexPath.row]
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped))
        bjkIV.addGestureRecognizer(gestureRecognizer1)

        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped))
        fbIV.addGestureRecognizer(gestureRecognizer2)
        
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped))
        gsIV.addGestureRecognizer(gestureRecognizer3)
        // Do any additional setup after loading the view.
    }
    

}
