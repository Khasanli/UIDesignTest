//
//  CustomLabel.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class CustomLabel: UILabel {
    private let labelText: String
    private let bgColor: UIColor?
    private let txtColor: UIColor
    private let textFont: UIFont

    var TextLabel : UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(labelText: String, bgColor: UIColor?, txtColor: UIColor, textFont: UIFont) {
        self.labelText = labelText
        self.bgColor = bgColor
        self.txtColor = txtColor
        self.textFont = textFont
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setView()
    }
    
    private func setView(){
        addSubview(TextLabel)
        TextLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        TextLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        TextLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        TextLabel.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        TextLabel.font = textFont
        TextLabel.textAlignment = .center
        TextLabel.text = labelText

        if bgColor != nil {
            TextLabel.textColor = txtColor
            TextLabel.backgroundColor = bgColor
        } else {
            TextLabel.textColor = txtColor
            TextLabel.backgroundColor = .clear
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
