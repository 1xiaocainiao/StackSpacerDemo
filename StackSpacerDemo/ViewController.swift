//
//  ViewController.swift
//  StackDemo
//
//  Created by mac on 2025/3/10.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftBtn = UIButton(type: .custom)
        leftBtn.setTitle("left", for: .normal)
        leftBtn.backgroundColor = .green
        
//        leftBtn.setContentCompressionResistancePriority(.required, for: .horizontal)
//        leftBtn.setContentHuggingPriority(.required, for: .horizontal)
        
        let left1Btn = UIButton(type: .custom)
        left1Btn.setTitle("left1", for: .normal)
        left1Btn.backgroundColor = .yellow
        
//        left1Btn.setContentCompressionResistancePriority(.required, for: .horizontal)
//        left1Btn.setContentHuggingPriority(.required, for: .horizontal)
        
        let rightBtn = UIButton(type: .custom)
        rightBtn.setTitle("right", for: .normal)
        rightBtn.backgroundColor = .lightGray
        
//        rightBtn.setContentCompressionResistancePriority(.required, for: .horizontal)
//        rightBtn.setContentHuggingPriority(.required, for: .horizontal)
        
        let spacerView = Spacer()
//        spacerView.translatesAutoresizingMaskIntoConstraints = false
//        spacerView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.addArrangedSubview(leftBtn)
        stackView.addArrangedSubview(left1Btn)
        stackView.addArrangedSubview(spacerView)
        stackView.addArrangedSubview(rightBtn)
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.heightAnchor.constraint(equalToConstant: 50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
        // Do any additional setup after loading the view.
    }


}

