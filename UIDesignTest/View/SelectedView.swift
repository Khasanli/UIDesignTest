//
//  SelectedUIView.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class SelectedView: UIView {
    var Image = UIImageView(image: UIImage())
    var DescriptionText = UILabel(text: "Perfect Combation: \nCakes & coffees for breakfast", backgroundColor: nil, textColor: .white, font: UIFont(name: "Avenir-Black", size: 18)!)
    var CategoryText = UILabel(text: "DESSERTS", backgroundColor: #colorLiteral(red: 0.6097969413, green: 0.6420211792, blue: 0.8854730725, alpha: 1), textColor: .white, font: UIFont(name: "Avenir-Roman", size: 10)!)
    var DateText = UILabel(text: "10/01/2017", backgroundColor: nil, textColor: .white, font: UIFont(name: "Avenir-Roman", size: 12)!)
    
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
        DescriptionText.widthAnchor.constraint(equalToConstant: 253).isActive = true
        DescriptionText.textAlignment = .left
        DescriptionText.numberOfLines = 2

        addSubview(CategoryText)
        CategoryText.topAnchor.constraint(equalTo: DescriptionText.bottomAnchor, constant: 10).isActive = true
        CategoryText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        CategoryText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        CategoryText.widthAnchor.constraint(equalToConstant: 75).isActive = true
        CategoryText.layer.cornerRadius = 3
        CategoryText.layer.masksToBounds = true
        
        addSubview(DateText)
        DateText.topAnchor.constraint(equalTo: DescriptionText.bottomAnchor, constant: 10).isActive = true
        DateText.leftAnchor.constraint(equalTo: CategoryText.rightAnchor, constant: 10).isActive = true
        DateText.heightAnchor.constraint(equalToConstant: 16).isActive = true
        DateText.widthAnchor.constraint(equalToConstant: 62).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

