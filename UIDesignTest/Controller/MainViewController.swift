//
//  ViewController.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class MainViewController: UIViewController {
    private let BackButton = CustomButton(image: UIImage(systemName: "arrow.backward"))
    private let TitleText = CustomLabel(labelText: "My Food Write-ups", bgColor: nil, txtColor: .black, textFont: UIFont(name: "Avenir-Medium", size: 14)!)
    private let SegmentedControl = SegmentControl()
    private let SelectedFoodView = SelectedView()
    private var FoodsTableView : GenericTableView<Item, CustomTableViewCell>!
    
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

        view.addSubview(SelectedFoodView)
        SelectedFoodView.topAnchor.constraint(equalTo: SegmentedControl.bottomAnchor).isActive = true
        SelectedFoodView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        SelectedFoodView.heightAnchor.constraint(equalToConstant: 226).isActive = true
        SelectedFoodView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        SelectedFoodView.Image.image = UIImage(named: "Img1")

        FoodsTableView = GenericTableView(items: ItemManager.items, cellHeight: 110, config: { (item, cell, index) in
            cell.CategoryText.TextLabel.text = item.category
            cell.DescriptionText.TextLabel.text = item.title
            cell.Image.image = item.image
            cell.DateText.TextLabel.text = item.date
            cell.CategoryText.TextLabel.backgroundColor = item.categoryColor
        })
        view.addSubview(FoodsTableView)
        FoodsTableView.topAnchor.constraint(equalTo: SelectedFoodView.bottomAnchor).isActive = true
        FoodsTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        FoodsTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        FoodsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        FoodsTableView.separatorColor = .lightGray
        FoodsTableView.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
}

