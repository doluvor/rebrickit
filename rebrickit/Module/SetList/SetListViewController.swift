//
//  SetListViewController.swift
//  rebrickit
//
//  Created by iosDevMacbookPro on 15/10/26.
//  Copyright © 2015年 doluvor. All rights reserved.
//

import UIKit

let SetCellIdentifier = "SetCellIdentifier"

class SetListViewController : UIViewController {
    
    @IBOutlet weak var setTableView: UITableView!
    
    dynamic var cellIdentifier = SetCellIdentifier
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView.delegate = self
        setTableView.dataSource = self
    }
}

extension SetListViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: cellIdentifier)
        
        if let textLabel = cell.textLabel {
            textLabel.text = "text"
        }
        
        return cell
    }
}