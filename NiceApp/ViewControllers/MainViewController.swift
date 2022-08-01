//
//  ViewController.swift
//  NiceApp
//
//  Created by Y3SUNG on 2022/08/01.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
         return label
    }()
    
    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(titleLable)
        
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

