//
//  TestTableView.swift
//  tableViewTips
//
//  Created by Liudong on 16/6/10.
//  Copyright © 2016年 Liudong. All rights reserved.
//

import UIKit

class TestTableView: UITableView {
    
    var VM = TestTabelViewModel()
    
    override func awakeFromNib() {
        self.tableFooterView = UIView()
        self.estimatedRowHeight = 60
        self.rowHeight = UITableViewAutomaticDimension
        self.separatorInset = UIEdgeInsetsZero
        
        VM.target = self
        self.delegate = VM
        self.dataSource = VM
    }

}
