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
        
        colorView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
    
        setColorForView()
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }

    
   private func setColorForView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
        
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        setColorForView()
        
        switch sender {
        case redSlider: redLabel.text = string(from: sender)
        case greenSlider: greenLabel.text = string(from: sender)
        case blueSlider: blueLabel.text = string(from: sender)
        default: break
        }

    }
    
    
    
}

