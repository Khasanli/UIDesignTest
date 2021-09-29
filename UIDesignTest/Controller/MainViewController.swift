//
//  ViewController.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class MainViewController: UIViewController {
    private var ButtomBar = UIView(backgroundColor: .blue)
    private let BackButton = UIButton(image: UIImage(systemName: "arrow.backward"), title: nil)
    private let TitleText = UILabel(text: "My Food Write-ups", backgroundColor: nil, textColor: .black, font: UIFont(name: "Avenir-Medium", size: 14)!)
    private var SegmentedControl = UISegmentedControl(items: ["Latest", "Foodies", "Bookmarks"], selectedColor: .cyan, tintColor: .black, selectedSegmentIndex: 2)
    private let SelectedFoodView = SelectedView()
    private var FoodsTableView : GenericTableView<CustomTableViewCell, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    private func setView(){
        view.backgroundColor = .white
        view.addSubview(TitleText)
        TitleText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        TitleText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        TitleText.widthAnchor.constraint(equalToConstant: 122).isActive = true
        TitleText.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(BackButton)
        BackButton.centerYAnchor.constraint(equalTo: TitleText.centerYAnchor).isActive = true
        BackButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        BackButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        BackButton.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        view.addSubview(SegmentedControl)
        SegmentedControl.topAnchor.constraint(equalTo: TitleText.bottomAnchor).isActive = true
        SegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        SegmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        SegmentedControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        SegmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: UIControl.Event.valueChanged)

        view.addSubview(ButtomBar)
        ButtomBar.topAnchor.constraint(equalTo: SegmentedControl.bottomAnchor, constant: -3).isActive = true
        ButtomBar.heightAnchor.constraint(equalToConstant: 3).isActive = true
        ButtomBar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ButtomBar.widthAnchor.constraint(equalTo: SegmentedControl.widthAnchor, multiplier: 1 / CGFloat(SegmentedControl.numberOfSegments)).isActive = true
        ButtomBar.frame.origin.x = (view.frame.width / CGFloat(SegmentedControl.numberOfSegments)) * CGFloat(SegmentedControl.selectedSegmentIndex)
        
        view.addSubview(SelectedFoodView)
        SelectedFoodView.topAnchor.constraint(equalTo: SegmentedControl.bottomAnchor).isActive = true
        SelectedFoodView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        SelectedFoodView.heightAnchor.constraint(equalToConstant: 226).isActive = true
        SelectedFoodView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        SelectedFoodView.Image.image = UIImage(named: "Img1")

        FoodsTableView = GenericTableView(items: ItemManager.items, cellHeight: 110)
        view.addSubview(FoodsTableView)
        FoodsTableView.topAnchor.constraint(equalTo: SelectedFoodView.bottomAnchor).isActive = true
        FoodsTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        FoodsTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        FoodsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        FoodsTableView.separatorColor = .lightGray
        FoodsTableView.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
     UIView.animate(withDuration: 0.3) {
         self.ButtomBar.frame.origin.x = (self.SegmentedControl.frame.width / CGFloat(self.SegmentedControl.numberOfSegments)) * CGFloat(self.SegmentedControl.selectedSegmentIndex)
       }
    }
}

