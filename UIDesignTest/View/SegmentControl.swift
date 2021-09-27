//
//  CustomSegmentControl.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class CustomSegmentControl: UISegmentedControl {
    private var buttomBar : UIView = {
        var view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let segmentedControl : UISegmentedControl = {
        let segmentedControl = UISegmentedControl (items: ["Latest", "Foodies", "Bookmarks"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.setTitleTextAttributes([
            NSAttributedString.Key.font : UIFont(name: "Avenir-Roman", size: 18)!,
            NSAttributedString.Key.foregroundColor: UIColor.lightGray
            ], for: .normal)

        segmentedControl.setTitleTextAttributes([
            NSAttributedString.Key.font : UIFont(name: "Avenir-Roman", size: 18)!,
            NSAttributedString.Key.foregroundColor: UIColor.systemBlue
        ], for: .selected);
        segmentedControl.backgroundColor = .clear
        segmentedControl.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        segmentedControl.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        return segmentedControl
    }()
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setView()
    }
    
    private func setView(){
        addSubview(segmentedControl)
        segmentedControl.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        segmentedControl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        segmentedControl.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: UIControl.Event.valueChanged)
        segmentedControl.selectedSegmentIndex = 1

        addSubview(buttomBar)
        buttomBar.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: -3).isActive = true
        buttomBar.heightAnchor.constraint(equalToConstant: 3).isActive = true
        buttomBar.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        buttomBar.widthAnchor.constraint(equalTo: segmentedControl.widthAnchor, multiplier: 1 / CGFloat(segmentedControl.numberOfSegments)).isActive = true
    }
    
    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
     UIView.animate(withDuration: 0.3) {
         self.buttomBar.frame.origin.x = (self.segmentedControl.frame.width / CGFloat(self.segmentedControl.numberOfSegments)) * CGFloat(self.segmentedControl.selectedSegmentIndex)
       }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
