//
//  RegisterViewController.swift
//  NavigiationViewController_tutoial
//
//  Created by Y3SUNG on 2022/08/02.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
    }

    
    @IBAction func btnAlreadyClicked(_ sender: UIButton) {
        print("btn")
        self.navigationController?.popViewController(animated: true)
    }
    
}

