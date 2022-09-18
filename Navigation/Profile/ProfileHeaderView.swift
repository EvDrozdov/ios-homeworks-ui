//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Евгений Дроздов on 11.09.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var catTextLabel: UILabel = {
        
        let label = UILabel(frame: CGRect(x: 165, y: 10, width: 200, height: 100))
        label.textColor = .black
        label.text = "Hipster Cat"
        label.backgroundColor = .clear
        label.font = .boldSystemFont(ofSize: 18)
        return label
        
    }()
    
    private lazy var catAvatarImage: UIImageView = {
        var imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 135, height: 135))
        imageView.image = UIImage(named: "cat")
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.layer.borderColor = UIColor(ciColor: .white).cgColor
        imageView.layer.borderWidth = 3
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    private lazy var statusLabel: UILabel = {
        
        let statusLabel = UILabel(frame: CGRect(x: 165, y: 100, width: 137, height: 60))
        statusLabel.text = "Waiting for something"
        statusLabel.textColor = .gray
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        return statusLabel
    }()
    
    private lazy var textFild:UITextField = {
        
        let textFild = UITextField(frame: CGRect(x: 165, y: 150, width: 230, height: 40))
        textFild.textColor = .black
        textFild.font = .systemFont(ofSize: 15, weight: .regular)
        textFild.backgroundColor = .white
        textFild.layer.cornerRadius = 12
        textFild.layer.borderWidth = 1
        textFild.layer.borderColor = UIColor(ciColor: .black).cgColor
        textFild.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return textFild
    }()
    
    private lazy var button: UIButton = {
        
        let button = UIButton(frame: CGRect(x: 16, y: 206, width: 380, height: 50))
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor(ciColor: .black).cgColor
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView() {
        
        self.addSubview(self.textFild)
        self.addSubview(self.statusLabel)
        self.addSubview(self.catAvatarImage)
        self.addSubview(self.button)
        self.addSubview(self.catTextLabel)
    }
    
    private var statusText: String = ""
    
    @objc func buttonPressed() {
        
        if let text = statusLabel.text {
            print(text)
        } else {
            print("Пусто")
        }
        statusLabel.text = statusText
    }
    
    @objc func statusTextChanged(_ textFild: UITextField) {
        
        statusText = textFild.text ?? ""
    }
    
    
}
