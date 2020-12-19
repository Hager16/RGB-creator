//
//  ViewController.swift
//  RGB creator
//
//  Created by Владимир Панасенков on 04.12.2020.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func changeColor(color: UIColor)
}

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var labelForRed: UILabel!
    @IBOutlet var labelForGreen: UILabel!
    @IBOutlet var labelForBlue: UILabel!
    @IBOutlet var labelForAlpha: UILabel!
    
    @IBOutlet var sliderForRed: UISlider!
    @IBOutlet var sliderForGreen: UISlider!
    @IBOutlet var sliderForBlue: UISlider!
    @IBOutlet var sliderForAlpha: UISlider!
    
    @IBOutlet var doneButton: UIButton!
    
    weak var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        colorView.layer.cornerRadius = 10
        colorView.layer.borderWidth = 3
        colorView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0)
        
        labelForRed.text = String(Int(sliderForRed.value))
        labelForGreen.text = String(Int(sliderForGreen.value))
        labelForBlue.text = String(Int(sliderForBlue.value))
        labelForAlpha.text = String(sliderForAlpha.value)
        
        sliderForRed.value = Float(0)
        sliderForRed.minimumValue = Float(0)
        sliderForRed.maximumValue = Float(255)
        
        sliderForGreen.value = Float(0)
        sliderForGreen.minimumValue = Float(0)
        sliderForGreen.maximumValue = Float(255)
        
        sliderForBlue.value = Float(0)
        sliderForBlue.minimumValue = Float(0)
        sliderForBlue.maximumValue = Float(255)
        
        sliderForAlpha.value = Float(0)
        sliderForAlpha.minimumValue = Float(0)
        sliderForAlpha.maximumValue = Float(1)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderAction() {
        labelForRed.text = String(Int(sliderForRed.value))
        labelForGreen.text = String(Int(sliderForGreen.value))
        labelForBlue.text = String(Int(sliderForBlue.value))
        labelForAlpha.text = String(format: "%.2f", (sliderForAlpha.value))
        colorView.backgroundColor = UIColor(red: CGFloat(sliderForRed.value) / 255, green: CGFloat(sliderForGreen.value) / 255, blue: CGFloat(sliderForBlue.value) / 255, alpha: CGFloat(sliderForAlpha.value))
    }
    
    @IBAction func doneButtonPressed() {
        delegate?.changeColor(color: colorView.backgroundColor ?? .systemGray4)
    }
}

