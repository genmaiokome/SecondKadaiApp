//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 渡辺涼介 on 2020/10/02.
//  Copyright © 2020 ryosuke.watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func unwind(_ sugue: UIStoryboardSegue){
        
        textField.text! = ""
        
    }
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
            

         
    }
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.yourName = textField.text!
    }


}

