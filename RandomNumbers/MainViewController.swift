//
//  ViewController.swift
//  RandomNumbers
//
//  Created by Anton Akhmedzyanov on 02.08.2023.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var minNumberLabel: UILabel!
    @IBOutlet var maxNumberLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.minValue = minNumberLabel.text
        settingVC.maxValue = maxNumberLabel.text
    }
//MARK: - IBAction
    
    @IBAction func pressedGetResult() {
        let minNumber = Int(minNumberLabel.text ?? "") ?? 0
       let maxNumber = Int(maxNumberLabel.text ?? "") ?? 100
        
        randomNumberLabel.text = Int.random(in: minNumber...maxNumber).formatted()
    }
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let settingVC = segue.source as? SettingViewController else { return }
        minNumberLabel.text = settingVC.minTextField.text
        maxNumberLabel.text = settingVC.maxTextField.text
    }
}

