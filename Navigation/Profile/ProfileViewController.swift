//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Евгений Дроздов on 30.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var profileHeaderView : ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        self.view.backgroundColor = .lightGray
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        return profileHeaderView

    }()
    
    private lazy var newButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("New Title", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.navigationItem.title = "Profile"
        self.view.addSubview(self.profileHeaderView)
        self.view.addSubview(self.newButton)
        
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            newButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            newButton.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            newButton.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            newButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        

    }

}
