//
//  SecondViewController.swift
//  OwnProject
//
//  Created by κΉμν on 2022/01/13.
//

import UIKit
class SecondViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToThirdView2", sender: self)
    }
}
