//
//  ViewController.swift
//  CalculatorME
//
//  Created by Sufiandy Elmy on 03/05/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateArea(_ sender: UIButton) {
        if let h = Double(height.text ?? "0"), let w = Double(width.text ?? "0"){
            result.text = String(h * w)
        }else{
            result.text = "Hasil Tidak Valid"
        }
    }
    
    @IBAction func resetView(_ sender: UIButton) {
        result.text = ""
        height.text = ""
        width.text = ""
    }
}

