//
//  ViewController.swift
//  Demo Animation
//
//  Created by hoanhbc on 03/04/2022.
//

import UIKit

class ViewController: UIViewController {
    //Khởi tạo 1 view chứa các view con
    let containerView: UIView = UIView()
    let titleLabel: UILabel = UILabel()
    let nameTextField = UITextField()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.addSubview(containerView)
        containerView.backgroundColor = .brown
        containerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        // Lấy ra kích thước của 1 view
//        view.bounds.height hoặc view.bounds.width/2
        
        view.addSubview(titleLabel)
        titleLabel.text = "Đăng nhập"
        titleLabel.font = UIFont(name: "Arial", size: 24)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .cyan
        titleLabel.frame = CGRect(x: 0, y: 50, width: containerView.bounds.width, height: 50)
        titleLabel.center.x = containerView.center.x
        // Do any additional setup after loading the view.
        
        view.addSubview(nameTextField)
        nameTextField.frame = CGRect(x: 0, y: titleLabel.frame.maxY + 32, width: 250, height: 50)
        nameTextField.center.x = containerView.center.x
        nameTextField.backgroundColor = .white
        nameTextField.placeholder = "Nhập tên của bạn"
        
        
        view.addSubview(nextButton)
        nextButton.frame = CGRect(x: 0, y: nameTextField.frame.maxY + 35 , width: 200, height: 50)
        nextButton.center.x = containerView.center.x
        nextButton.backgroundColor = .black
        nextButton.setTitle("Next", for:.normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.clipsToBounds = true
        nextButton.layer.cornerRadius = 10
        nextButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        nextButton.alpha = 0
        UIView.animate(withDuration: 2) {
            self.nextButton.alpha = 1
        }
        
    }
    @objc func tappedButton () {
        print(nameTextField.text ?? "")
    }
    

}

