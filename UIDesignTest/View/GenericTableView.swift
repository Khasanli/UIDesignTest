//
//  GenericTableView.swift
//  UIDesignTest
//
//  Created by Samir Hasanli on 26.09.21.
//

import UIKit


class GenericTableView<T: GenericCell<U>, U>: UITableView, UITableViewDelegate, UITableViewDataSource {
    var cellHeight: CGFloat!
    var items = [U]()
    init(items: [U], cellHeight: CGFloat) {
        self.items = items
        self.cellHeight = cellHeight
        super.init(frame: .zero, style: .plain)
        self.delegate = self
        self.dataSource = self
        self.register(T.self, forCellReuseIdentifier: "Cell")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GenericCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class GenericCell<T>: UITableViewCell {
    var item: T!
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
