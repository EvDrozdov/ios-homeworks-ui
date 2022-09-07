//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Евгений Дроздов on 30.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var firstButton: UIButton = {
              let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
              button.backgroundColor = .blue
              button.setTitle("Профиль", for: .normal)
              button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
              return button
          }()

          override func viewDidLoad() {
              super.viewDidLoad()
              self.view.backgroundColor = .systemGreen
              
              self.view.addSubview(self.firstButton)
              self.firstButton.center = self.view.center
          }
          
          @objc private func didTapButton() {
              let viewController = FeedViewController()
              viewController.modalPresentationStyle = .fullScreen
              self.present(viewController, animated: true)
          }
}
