//
//  TableViewCell.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    var Image = CustomImage(img: UIImage())
    var DescriptionText = CustomLabel(labelText: "", bgColor: nil, txtColor: .black, textFont: UIFont(name: "Avenir-Medium", size: 14)!)
    var CategoryText = CustomLabel(labelText: "", bgColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), txtColor: .white, textFont: UIFont(name: "Avenir-Roman", size: 10)!)
    var TimeText = CustomLabel(labelText: "", bgColor: nil, txtColor: .lightGray, textFont: UIFont(name: "Avenir-Roman", size: 10)!)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(Image)
        Image.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        Image.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        Image.widthAnchor.constraint(equalToConstant: 120).isActive = true
        Image.heightAnchor.constraint(equalToConstant: 72).isActive = true
        
        addSubview(DescriptionText)
        DescriptionText.topAnchor.constraint(equalTo: Image.topAnchor).isActive = true
        DescriptionText.leftAnchor.constraint(equalTo: Image.rightAnchor, constant: 10).isActive = true
        DescriptionText.heightAnchor.constraint(equalToConstant: 38).isActive = true
        DescriptionText.widthAnchor.constraint(equalToConstant: 130).isActive = true
        DescriptionText.TextLabel.textAlignment = .left
        
        DescriptionText.TextLabel.numberOfLines = 2

        addSubview(CategoryText)
        CategoryText.topAnchor.constraint(equalTo: DescriptionText.bottomAnchor, constant: 10).isActive = true
        CategoryText.leftAnchor.constraint(equalTo: Image.rightAnchor, constant: 10).isActive = true
        CategoryText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        CategoryText.widthAnchor.constraint(equalToConstant: 75).isActive = true
        CategoryText.layer.cornerRadius = 3
        CategoryText.layer.masksToBounds = true
        
        addSubview(TimeText)
        TimeText.centerYAnchor.constraint(equalTo: CategoryText.centerYAnchor).isActive = true
        TimeText.leftAnchor.constraint(equalTo: CategoryText.rightAnchor, constant: 10).isActive = true
        TimeText.heightAnchor.constraint(equalToConstant: 16).isActive = true
        TimeText.widthAnchor.constraint(equalToConstant: 62).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
