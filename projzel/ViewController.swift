//
//  ViewController.swift
//  projzel
//
//  Created by Администратор on 04.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farengeitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        let farengeitTemperature = ((sender.value * 9 / 5) + 32)
        farengeitLabel.text = "\(farengeitTemperature)ºC"
    }
    
}
