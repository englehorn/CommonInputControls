//
//  ViewController.swift
//  CommonInputControls
//
//  Created by AE on 1/19/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var button: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.addTarget(self, action: #selector(buttonTapped(_:)),
        for: .touchUpInside)

    }

    @IBAction func buttonTapped(_ sender: Any) {
    print("Button was tapped")
        
        if toggle.isOn {
            print("toggle is on")
        }
        else {
                print("toggle is off")
            
        }
        
         print("The slider is set to \(slider.value)")
        

        
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        }
        else {
            print("The switch is off!")
        }

    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
        print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
            print(location)
        
    }
    
}

