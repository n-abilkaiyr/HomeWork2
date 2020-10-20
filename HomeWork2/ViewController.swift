//
//  ViewController.swift
//  HomeWork2
//
//  Created by Abilkaiyr Nurzhan on 10/21/20.
//  Copyright © 2020 Abilkaiyr Nurzhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setPropertiesOfView()
        setPropertiesOfSliders()
        setPropertiesOfLabels()
        
    }

    @IBAction func redSliderAction() {
        let currentValue = (redSlider.value * 100).rounded() / 100
        redLabel.text = String(currentValue)
        setColorForView()
    }
    @IBAction func greenSliderAction() {
        let currentValue = (greenSlider.value * 100).rounded() / 100
        greenLabel.text = String(currentValue)
        setColorForView()
    }
    @IBAction func blueSliderAction() {
        let currentValue = (blueSlider.value * 100).rounded() / 100
            blueLabel.text = String(currentValue)
            setColorForView()
    }
    
    func setPropertiesOfSliders()  {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    func setPropertiesOfView() {
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = .black
    }
    
    func setPropertiesOfLabels() {
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }
    
    func setColorForView() {
        guard let red = redLabel.text,
              let redValue = (Float(red)),
              let green = greenLabel.text,
              let greenValue = (Float(green)),
              let blue = blueLabel.text,
              let blueValue = (Float(blue)) else {
             
                return
        }
        
        let redCG = CGFloat(redValue)
        let greenCG = CGFloat(greenValue)
        let blueCG = CGFloat(blueValue)
        
        colorView.backgroundColor = UIColor(red: redCG,
                                            green: greenCG,
                                            blue: blueCG,
                                            alpha: 1)
        
    }
    
}

