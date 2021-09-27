//
//  GenericTableView.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit

class GenericTableView<Item, Cell: UITableViewCell>: UITableView, UITableViewDelegate, UITableViewDataSource {
    var cellHeight: CGFloat!
    var items : [Item]!
    var config: (Item, Cell, Int) -> ()
    
    init(items: [Item], cellHeight: CGFloat, config: @escaping (Item, Cell, Int) -> ()) {
        self.items = items
        self.config = config
        self.cellHeight = cellHeight
        super.init(frame: .zero, style: .plain)
        
        self.delegate = self
        self.dataSource = self
        self.register(Cell.self, forCellReuseIdentifier: "Cell")
        self.tableFooterView = UIView()
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        config(items[indexPath.row], cell, indexPath.row)
        return cell
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GenericTableView {
    func reload(data items: [Item]) {
        self.items = items
        self.reloadData()
    }
}
