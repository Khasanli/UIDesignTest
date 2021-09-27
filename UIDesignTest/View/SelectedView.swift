//
//  SelectedUIView.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit
class SelectedView: UIView {
    var Image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .lightGray
        return image
    }()
    
    var DescriptionText = CustomLabel(labelText: "Perfect Combation: \nCakes & coffees for breakfast", bgColor: nil, txtColor: .white, textFont: UIFont(name: "Avenir-Black", size: 18)!)
    
    var CategoryText = CustomLabel(labelText: "DESSERTS", bgColor: #colorLiteral(red: 0.6097969413, green: 0.6420211792, blue: 0.8854730725, alpha: 1), txtColor: .white, textFont: UIFont(name: "Avenir-Roman", size: 10)!)
    
    var TimeText = CustomLabel(labelText: "10/01/2017", bgColor: nil, txtColor: .white, textFont: UIFont(name: "Avenir-Roman", size: 12)!)
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setView()
    }
    
    private func setView(){
        addSubview(Image)
        Image.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        Image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        Image.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        Image.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        addSubview(DescriptionText)
        DescriptionText.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50).isActive = true
        DescriptionText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        DescriptionText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        DescriptionText.widthAnchor.constraint(equalToConstant: 250).isActive = true
        DescriptionText.TextLabel.textAlignment = .left
        DescriptionText.TextLabel.numberOfLines = 2

        addSubview(CategoryText)
        CategoryText.topAnchor.constraint(equalTo: DescriptionText.bottomAnchor, constant: 10).isActive = true
        CategoryText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        CategoryText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        CategoryText.widthAnchor.constraint(equalToConstant: 75).isActive = true
        CategoryText.layer.cornerRadius = 3
        CategoryText.layer.masksToBounds = true
        
        addSubview(TimeText)
        TimeText.topAnchor.constraint(equalTo: DescriptionText.bottomAnchor, constant: 10).isActive = true
        TimeText.leftAnchor.constraint(equalTo: CategoryText.rightAnchor, constant: 10).isActive = true
        TimeText.heightAnchor.constraint(equalToConstant: 16).isActive = true
        TimeText.widthAnchor.constraint(equalToConstant: 62).isActive = true

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

