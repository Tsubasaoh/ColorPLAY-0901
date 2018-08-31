//
//  ViewController.swift
//  color
//
//  Created by 王奕功 on 2018/8/28.
//  Copyright © 2018年 王奕功. All rights reserved.
//

import UIKit
import GameKit
class ViewController: UIViewController {
//拉啦啦啦～outlet們
    @IBOutlet weak var luigiHatView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaChange: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//定義多個元件的Action連到同一個Function,並將Float轉為CGFloat
    @IBAction func colorSliderChange(_ sender: Any) {
        luigiHatView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaChange.value))

    }
//設定slider傳值,並顯示RGB數字到小數點一位即可
    @IBAction func rgbSliderChange(_ sender: UISlider) {
        let numberString = String(format: "%.1f", sender.value)
    if sender == redSlider {redLabel.text = numberString } else if sender == blueSlider {
    blueLabel.text = numberString
    } else if sender == greenSlider { greenLabel.text = numberString} else if sender == alphaChange{ alphaLabel.text =  numberString}
}
//機會命運,亂數選取,把所有東西再丟一次
    @IBAction func buttonPressed(_ sender: UIButton) {
        luigiHatView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaChange.value))
            redSlider.value = Float(Int.random(in: 0...1))
            greenSlider.value = Float(Int.random(in: 0...1))
            blueSlider.value = Float(CGFloat(Int.random(in: 0...1)))
            alphaChange.value = Float(CGFloat(Int.random(in: 0...1)))
        }
    }

