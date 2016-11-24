//
//  ViewController.swift
//  RGBSlider
//
//  Created by Cameron Dyson on 24/11/2016.
//  Copyright © 2016 Cameron Dyson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var open: UIButton!
    @IBOutlet weak var colorSquare: UIView!
    //@IBOutlet var colorSquare: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackgroundColor()
        // Do any additional setup after loading the view, typically from a nib.
        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

}

