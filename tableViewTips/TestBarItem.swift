//
//  TestBarItem.swift
//  tableViewTips
//
//  Created by Liudong on 16/6/10.
//  Copyright © 2016年 Liudong. All rights reserved.
//

import UIKit

class TestBarItem: UIBarButtonItem {
    
    var VM = TestBarItemViewModel()
    
    weak var VCTarget: ViewController!
    
    override func awakeFromNib() {
        VM.target = self
        self.target = VM
        self.action = #selector(VM.testAction)
    }

}
