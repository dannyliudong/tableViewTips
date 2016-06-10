//
//  ViewController.swift
//  tableViewTips
//
//  Created by Liudong on 16/6/9.
//  Copyright © 2016年 Liudong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var barItem: TestBarItem!
    
    deinit {
        print("ViewController Release")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        barItem.VCTarget = self
    }
    
    //MARK: 分割线顶头
    override func viewDidLayoutSubviews() {
        self.tableView.separatorInset = UIEdgeInsetsZero
        self.tableView.layoutMargins = UIEdgeInsetsZero
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}