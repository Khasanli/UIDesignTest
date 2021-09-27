//
//  ViewController.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class MainViewController: UIViewController {
    var TitleText = CustomLabel(labelText: "My Food Write-ups", bgColor: nil, txtColor: .black, textFont: UIFont(name: "Avenir-Medium", size: 14)!)
    private var segmentedControl = CustomSegmentControl() 
    private var selectedFoodView = SelectedView()
    private var foodsTableView : GenericTableView<Item, CustomTableViewCell>!
    
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
        
        view.addSubview(segmentedControl)
        segmentedControl.topAnchor.constraint(equalTo: TitleText.bottomAnchor).isActive = true
        segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 50).isActive = true

        view.addSubview(selectedFoodView)
        selectedFoodView.Image.image = UIImage(named: "Img1")
        selectedFoodView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor).isActive = true
        selectedFoodView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        selectedFoodView.heightAnchor.constraint(equalToConstant: 230).isActive = true
        selectedFoodView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        foodsTableView = GenericTableView(items: ItemManager.items, cellHeight: 110, config: { (item, cell, index) in
            cell.CategoryText.TextLabel.text = item.category
            cell.DescriptionText.TextLabel.text = item.title
            cell.Image.image = item.image
            cell.TimeText.TextLabel.text = item.date
            cell.CategoryText.TextLabel.backgroundColor = item.categoryColor
        })
        view.addSubview(foodsTableView)
        foodsTableView.topAnchor.constraint(equalTo: selectedFoodView.bottomAnchor).isActive = true
        foodsTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        foodsTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        foodsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        foodsTableView.separatorColor = .lightGray
        foodsTableView.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
}

