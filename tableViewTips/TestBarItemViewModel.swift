//
//  TestBarItemViewModel.swift
//  tableViewTips
//
//  Created by Liudong on 16/6/10.
//  Copyright © 2016年 Liudong. All rights reserved.
//

import UIKit

class TestBarItemViewModel: NSObject {
    weak var target:TestBarItem!
    
    func testAction() {
        print("click Item")
        
//        let vc = SecondViewController()
//        target.VCTarget.navigationController?.pushViewController(vc, animated: true)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("test")
        target.VCTarget.navigationController?.pushViewController(vc, animated: true)
        
    }

}
