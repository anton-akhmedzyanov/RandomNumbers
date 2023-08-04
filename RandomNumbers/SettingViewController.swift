//
//  SettingViewController.swift
//  RandomNumbers
//
//  Created by Anton Akhmedzyanov on 02.08.2023.
//

import UIKit

final class SettingViewController: UIViewController {

    @IBOutlet var minTextField: UITextField!
    @IBOutlet var maxTextField: UITextField!
    
    var minValue: String!
    var maxValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       minTextField.text = minValue
       maxTextField.text = maxValue
    }

    
    @IBAction func pressedCancelButton() {
        dismiss(animated: true)
    }
    
}
