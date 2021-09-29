//
//  CustomLabel.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit
extension UILabel {
    convenience init(text: String, backgroundColor: UIColor?, textColor: UIColor, font: UIFont) {
        self.init()
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = font
        self.text = text
        self.textAlignment = .center
        if backgroundColor != nil {
            self.textColor = textColor
            self.backgroundColor = backgroundColor
        } else {
            self.textColor = textColor
            self.backgroundColor = .clear
        }
    }
}
extension UIButton {
    convenience init(image: UIImage?, title: String?) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setImage(image, for: .normal)
        self.setTitle(title, for: .normal)
    }
}

extension UIView {
    convenience init(backgroundColor: UIColor) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = backgroundColor
    }
}

extension UIImageView {
    convenience init(image: UIImage?) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = image
    }
}

extension UISegmentedControl {
    convenience init(items: [String], selectedColor: UIColor, tintColor: UIColor, selectedSegmentIndex: Int) {
        self.init(items: items)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitleTextAttributes([
            NSAttributedString.Key.font : UIFont(name: "Avenir-Roman", size: 18)!,
            NSAttributedString.Key.foregroundColor: tintColor
            ], for: .normal)

        self.setTitleTextAttributes([
            NSAttributedString.Key.font : UIFont(name: "Avenir-Roman", size: 18)!,
            NSAttributedString.Key.foregroundColor: selectedColor
        ], for: .selected);
        self.backgroundColor = .clear
        self.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        self.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        self.selectedSegmentIndex = selectedSegmentIndex
    }
}
