//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by Y3SUNG on 2022/04/18.
//

import UIKit
protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledTest: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor =  .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        self.configureView()
    }
    
    private func configureView() {
        if let ledTest = self.ledTest {
            self.textField.text = ledTest
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColor(color: self.backgroundColor)
    }
    
    @IBAction func tabTextColorButton(_ sender: UIButton) {
        if sender == yellowButton{
            self.textColor = .yellow
            self.changeTextColor(color: .yellow)
        } else if sender == purpleButton {
            self.textColor = .purple
            self.changeTextColor(color: .purple)
        } else {
            self.textColor = .green
            self.changeTextColor(color: .green)
        }
    }
    @IBAction func tabBackgroundColorButton(_ sender: UIButton) {
        if sender == blackButton{
            self.backgroundColor = .black
            self.changeBackgroundColor(color: .black)
        } else if sender == blueButton{
            self.backgroundColor = .blue
            self.changeBackgroundColor(color: .blue)
        } else {
            self.backgroundColor = .orange
            self.changeBackgroundColor(color: .orange)
        }
    }
    @IBAction func tabSaveButton(_ sender: Any) {
        self.delegate?.changedSetting(
            text: self.textField.text,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor)
        self.navigationController?.popViewController(animated: true)
    }
    private func changeTextColor(color: UIColor){
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    private func changeBackgroundColor(color: UIColor){
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
    
    
}
