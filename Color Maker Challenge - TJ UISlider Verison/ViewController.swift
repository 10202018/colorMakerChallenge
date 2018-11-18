//
//  ViewController.swift
//  Color Maker Challenge - TJ UISlider Verison
//
//  Created by TJ on 11/17/18.
//  Copyright © 2018 TJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var colorView: UIView!
    
    // MARK: Global Variables
    var r: Float = 0 {
        didSet {
            colorChange(r: r, g: g, b: b)
        }
    }
    var g: Float = 0 {
        didSet {
            colorChange(r: r, g: g, b: b)
        }
    }
    var b: Float = 0 {
        didSet {
            colorChange(r: r, g: g, b: b)
        }
    }
    
    // MARK: Actions
    @IBAction func redSliderValueChanged(_ sender: Any) {
        r = redSlider.value
    }
    @IBAction func greenSliderValueChanged(_ sender: Any) {
        g = greenSlider.value
    }
    @IBAction func blueSliderValueChanged(_ sender: Any) {
        b = blueSlider.value
    }
    
    
    func colorChange(r: Float, g: Float, b: Float) {
        let r = CGFloat(r)
        let g = CGFloat(g)
        let b = CGFloat(b)
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.redLabel.textColor = .red
        self.greenLabel.textColor = .green
        self.blueLabel.textColor = .blue
        
        self.redSlider.minimumTrackTintColor = .red
        self.greenSlider.minimumTrackTintColor = .green
        self.blueSlider.minimumTrackTintColor = .blue
    }


}

