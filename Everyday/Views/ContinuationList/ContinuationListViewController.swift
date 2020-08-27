//
//  ContinuationListViewController.swift
//  Everyday
//
//  Created by 築山朋紀 on 2020/08/26.
//

import UIKit

class ContinuationListViewController: UITableViewController, Injectable {
    
    struct Dependency {
        
    }
    
    required init(dependency: Dependency) {
        super.init(style: .insetGrouped)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "🎉\(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = ContinuationViewController.init(dependency: .init())
        navigationController?.pushViewController(viewController, animated: true)
    }
}
