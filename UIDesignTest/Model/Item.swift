//
//  Item.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

struct Item {
    var image: UIImage?
    var title: String?
    var category: String?
    var categoryColor: UIColor?
    var date: String?
}

class ItemManager {
    static let items = [Item(image: UIImage(named: "Img2"), title: "Best Ramen in town! \nfor foodie lovers", category: "ASIAN FOOD", categoryColor: #colorLiteral(red: 0.5620083809, green: 0.2058267593, blue: 0.9131050706, alpha: 1), date: "02/01/2017"), Item(image: UIImage(named: "Img3"), title: "Chillis and spices, \nfor additional flavours", category: "GROCERY", categoryColor: #colorLiteral(red: 0.2087788582, green: 0.5455958247, blue: 0.9330478907, alpha: 1), date: "06/01/2017"), Item(image: UIImage(named: "Img4"), title: "Meet us to Chinatown and \nhave some meat", category: "PROTEIN", categoryColor: #colorLiteral(red: 0.8549631238, green: 0.3222133815, blue: 0.1988280118, alpha: 1), date: "10/01/2017"), ]
}
