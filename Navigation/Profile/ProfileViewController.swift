//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Евгений Дроздов on 30.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {
//
    private lazy var profileHeaderView : ProfileHeaderView = {
        let view = ProfileHeaderView(frame: .zero)
        return view

    }()




    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray
        self.navigationItem.title = "Profile"
        self.view.addSubview(self.profileHeaderView)
        

    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileHeaderView.frame = self.view.bounds
    }
//
    
}
