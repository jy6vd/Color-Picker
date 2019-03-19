//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Jonathan Yee on 3/19/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var ColorPicker: UIPickerView!
    @IBOutlet weak var color: UILabel!
    
    
    let colors:[String] = ["Red","Orange","Green","Blue","Purple"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let colorSelected = colors[row]
            color.text = colorSelected
        switch colorSelected{
        case "Red":
            view.backgroundColor = UIColor.red
        case "Orange":
            view.backgroundColor = UIColor.orange
        case "Green":
            view.backgroundColor = UIColor.green
        case "Blue":
            view.backgroundColor = UIColor.blue
        default:
            view.backgroundColor = UIColor.purple
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ColorPicker.delegate = self
        ColorPicker.dataSource = self
        color.text = colors[0]
        view.backgroundColor = UIColor.red
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
