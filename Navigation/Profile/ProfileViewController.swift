//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Евгений Дроздов on 30.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var profileHeaderView : ProfileHeaderView = {
        let view = ProfileHeaderView(frame: .zero)
        return view

    }()

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = "Profile"
        self.view.addSubview(self.profileHeaderView)
        

    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileHeaderView.frame = CGRect(x: 0, y: 50, width: self.view.bounds.width, height: self.view.bounds.height)
    }

    
}
