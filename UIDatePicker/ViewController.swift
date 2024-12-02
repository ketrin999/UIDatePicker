//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Kate  on 29.07.2024.
//

import UIKit

class ViewController: UIViewController {

    let promptPicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .dateAndTime
        picker.tintColor = .systemMint
        return picker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configurePicker()
    }

    let formatter = DateFormatter()

    private func configurePicker() {
        view.addSubview(promptPicker)
        promptPicker.translatesAutoresizingMaskIntoConstraints = false
        promptPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        promptPicker.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        promptPicker.addTarget(self, action: #selector(datePickerAction(sender:)), for: .valueChanged)
    }

    @objc func datePickerAction(sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm EEEE, MMM d, yyyy"
        formatter.timeZone = TimeZone.current
    }

}

