//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Евгений Дроздов on 04.07.2022.
//

import UIKit


class ProfileView: UIView {
    
    
    @IBOutlet weak var textArea: UITextView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var avatar: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    
    private func setup() {
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else {
            return UIView()
        }
        
        return view
        
    }
    
}
    



