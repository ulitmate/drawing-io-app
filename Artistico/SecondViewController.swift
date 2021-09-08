//
//  SecondViewController.swift
//  Artistico
//
//  Created by Michael Muinos on 10/19/16.
//  Copyright © 2016 Michael Muinos. All rights reserved.
//

import UIKit

// Extension propert
extension Float {
    func round() -> Float {
        let divisor = pow(10.0, Float(3))
        return (self * divisor).rounded() / divisor
    }
}

class SecondViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var widthSlider: UISlider!
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    var alpha: CGFloat = 0.0
    var width: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        redSlider.setValue(Float(appDelegate.redValue), animated: true)
        greenSlider.setValue(Float(appDelegate.greenValue), animated: true)
        blueSlider.setValue(Float(appDelegate.blueValue), animated: true)
        alphaSlider.setValue(Float(appDelegate.alphaValue), animated: true)
        widthSlider.setValue(Float(appDelegate.widthValue), animated: true)
        
        redLabel.text = "\(appDelegate.redValue.rounded())"
        greenLabel.text = "\(appDelegate.greenValue.rounded())"
        blueLabel.text = "\(appDelegate.blueValue.rounded())"
        alphaLabel.text = "\(appDelegate.alphaValue.rounded())"
        widthLabel.text = "\(appDelegate.widthValue.rounded())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redSliderChanged(_ sender: UISlider) {
        let value = sender.value
        appDelegate.redValue = CGFloat(value)
        redLabel.text = "\(value.round())"
    }

    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let value = sender.value
        appDelegate.greenValue = CGFloat(value)
        greenLabel.text = "\(value.round())"
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        let value = sender.value
        appDelegate.blueValue = CGFloat(value)
        blueLabel.text = "\(value.round())"
    }
    
    @IBAction func alphaSliderChanged(_ sender: UISlider) {
        let value = sender.value
        appDelegate.alphaValue = CGFloat(value)
        alphaLabel.text = "\(value.round())"
    }
    
    @IBAction func widthSliderChanged(_ sender: UISlider) {
        let value = sender.value
        appDelegate.widthValue = CGFloat(value)
        widthLabel.text = "\(value.round())"
    }
    
    @IBAction func largeShape(_ sender: UIButton) {
        appDelegate.shapeSize = Shape.large
    }
    
    @IBAction func mediumShape(_ sender: UIButton) {
        appDelegate.shapeSize = Shape.medium
    }
    
    @IBAction func smallShape(_ sender: UIButton) {
        appDelegate.shapeSize = Shape.small
    }
}

