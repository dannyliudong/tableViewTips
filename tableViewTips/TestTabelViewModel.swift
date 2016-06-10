//
//  TestTabelViewModel.swift
//  tableViewTips
//
//  Created by Liudong on 16/6/10.
//  Copyright © 2016年 Liudong. All rights reserved.
//

import UIKit

class TestTabelViewModel: NSObject, UITableViewDelegate, UITableViewDataSource {
    var target: TestTableView!
    
    let tesValue:NSString = "测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n测试内容\n"
    let imageArray = [UIImage(contentsOfFile:"Unknown-1.jpeg"),
                      UIImage(contentsOfFile:"Unknown-2.jpeg"),
                      UIImage(contentsOfFile:"Unknown-3.jpeg"),
                      UIImage(contentsOfFile:"Unknown-4.jpeg"),
                      UIImage(contentsOfFile:"Unknown-5.jpeg")]
    
    
    var dict:Dictionary<String,String> = [:]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        //        let label = cell.contentView.viewWithTag(1000) as! UILabel
        //        label.text = tesValue as String
        //        if dict[String(indexPath.row)] == "0" {
        //            label.numberOfLines = 0
        //        } else {
        //            label.numberOfLines = 1
        //        }
        
        let bottomView = cell.contentView.viewWithTag(2000)
        let imageView = bottomView?.viewWithTag(2001)! as! UIImageView
        
        
        //        imageView.image = imageArray[Int(arc4random_uniform(4))]
        
        let rect = bottomView?.convertRect((bottomView!.bounds), toView: nil)
        
        var Y = UIScreen.mainScreen().bounds.size.height - (rect?.origin.y)! - 600
        Y *= 0.2
        if Y > 0 {
            Y = 0
        }
        if Y < -100 {
            Y = -100
        }
        
        imageView.frame.origin.y = Y
        
        return cell
    }
    
    //MARK: Cell 动态高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //        let att = [NSFontAttributeName: UIFont.systemFontOfSize(17)]
        //        return tesValue.boundingRectWithSize(CGSizeMake(300, 0), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: att, context: nil).size.height + 20
        
        return 300
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)!
        //        let label = cell.contentView.viewWithTag(1000) as! UILabel
        //        tableView.beginUpdates()
        //        if label.numberOfLines == 0 {
        //            label.numberOfLines = 1
        //            dict[String(indexPath.row)] = "1"
        //        }else {
        //            label.numberOfLines = 0
        //            dict[String(indexPath.row)] = "0"
        //        }
        //        tableView.endUpdates()
        //        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins = UIEdgeInsetsZero
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        for cell in self.target.visibleCells {
            let bottomView = cell.contentView.viewWithTag(2000)
            let imageView = bottomView?.viewWithTag(2001)
            let rect = bottomView?.convertRect((bottomView?.bounds)!, toView: nil)
            
            var Y = UIScreen.mainScreen().bounds.size.height - (rect?.origin.y)! - 600
            Y *= 0.2
            if Y > 0 {
                Y = 0
            }
            if Y < -100 {
                Y = -100
            }
            
            imageView?.frame.origin.y = Y
        }
    }

}
