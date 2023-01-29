//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Ilya Pavlov on 02.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
//  @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
     }


    @IBAction func datePicker(_ sender: UIDatePicker) {
        sender.maximumDate = Date.now
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTapped() {
        if (numberOfDays == "0 дней") || (numberOfDays == "") {
            infoLabel.text = "Начните наслаждаться жизнью с сегодняшнего дня!"
        } else {
            infoLabel.text = "Вы наслаждаетесь жизнью уже \(numberOfDays)"
        }
    }
    
}
