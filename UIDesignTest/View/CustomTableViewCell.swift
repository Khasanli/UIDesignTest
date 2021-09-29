//
//  TableViewCell.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class CustomTableViewCell: GenericCell<Item> {
    var Image = UIImageView(image: UIImage())
    var DescriptionText = UILabel(text: "", backgroundColor: nil, textColor: .black, font: UIFont(name: "Avenir-Medium", size: 14)!)
    var CategoryText = UILabel(text: "", backgroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), textColor: .white, font: UIFont(name: "Avenir-Roman", size: 10)!)
    var DateText = UILabel(text: "", backgroundColor: nil, textColor: .lightGray, font: UIFont(name: "Avenir-Roman", size: 10)!)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setView()
    }
    override var item: Item! {
        didSet {
            Image.image = item.image
            DescriptionText.text = item.title
            CategoryText.text = item.category
            DateText.text = item.date
            CategoryText.backgroundColor = item.categoryColor
        }
    }
    private func setView(){
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
        DescriptionText.textAlignment = .left
        DescriptionText.numberOfLines = 2

        addSubview(CategoryText)
        CategoryText.topAnchor.constraint(equalTo: DescriptionText.bottomAnchor, constant: 10).isActive = true
        CategoryText.leftAnchor.constraint(equalTo: Image.rightAnchor, constant: 10).isActive = true
        CategoryText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        CategoryText.widthAnchor.constraint(equalToConstant: 75).isActive = true
        CategoryText.layer.cornerRadius = 3
        CategoryText.layer.masksToBounds = true

        addSubview(DateText)
        DateText.centerYAnchor.constraint(equalTo: CategoryText.centerYAnchor).isActive = true
        DateText.leftAnchor.constraint(equalTo: CategoryText.rightAnchor, constant: 10).isActive = true
        DateText.heightAnchor.constraint(equalToConstant: 16).isActive = true
        DateText.widthAnchor.constraint(equalToConstant: 62).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
