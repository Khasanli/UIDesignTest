//
//  CustomImage.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 27.09.21.
//

import UIKit

class CustomImageView: UIImageView {
    private let img: UIImage?

    var Image : UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    init(img: UIImage?) {
        self.img = img
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setView()
    }
    
    private func setView(){
        addSubview(Image)
        Image.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        Image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        Image.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        Image.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        Image.image = img
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
