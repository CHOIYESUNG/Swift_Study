//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by Y3SUNG on 2022/04/18.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UIStackView!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

    }
    @IBAction func tabTextColorButton(_ sender: UIButton) {
        if sender == self.yellowButton{
            self.changeTextColor(color: .yellow)
        } else if sender == self.purpleButton {
            self.changeTextColor(color: .purple)
        } else if sender == self.greenButton {
            self.changeTextColor(color: .green)
        }
    }
    @IBAction func tabBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton{
            self.changeBackgroundColor(color: .black)
        } else if sender == self.blueButton{
            self.changeBackgroundColor(color: .blue)
        } else if sender == self.orangeButton {
            self.changeBackgroundColor(color: .orange)
        }
    }
    @IBAction func tabSaveButton(_ sender: UIButton) {
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
