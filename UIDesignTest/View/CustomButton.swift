//
//  CustomButton.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 27.09.21.
//

import UIKit

class CustomButton: UIButton {
    private let image: UIImage?
    private let Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(image: UIImage?) {
        self.image = image
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setView()
    }
    private func setView(){
        addSubview(Button)
        Button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        Button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        Button.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        Button.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        Button.setImage(image, for: .normal)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
