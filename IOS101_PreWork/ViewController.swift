//
//  ViewController.swift
//  IOS101_PreWork
//
//  Created by Jiaming Chen on 6/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var labels: [UILabel]!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        let complementary = complementaryColor(color: randomColor)
        view.backgroundColor = randomColor
        for label in labels{
            label.textColor = complementary
        }
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func complementaryColor(color: UIColor) -> UIColor {
        let ciColor = CIColor(color: color)

        let compRed: CGFloat = 1.0 - ciColor.red
        let compGreen: CGFloat = 1.0 - ciColor.green
        let compBlue: CGFloat = 1.0 - ciColor.blue

        return UIColor(red: compRed, green: compGreen, blue: compBlue, alpha: 1.0)

    }

    
}

