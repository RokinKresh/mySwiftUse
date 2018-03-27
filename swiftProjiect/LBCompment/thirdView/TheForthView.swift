//
//  TheForthView.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/22.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

class TheForthView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
                        "Thursday", "Friday", "saturday"]
    var foucou = ""
    var pageNumber: Int!
    var touchNumber: Int!
    
    //下角标的使用
    subscript(index: Int) -> String {
        
        get {
            return days[index]   // 声明下标脚本的值
        }
        set(newValue) {
            self.days[index] = newValue   // 执行赋值操作
        }
        
    }
    
    
    override init(frame: CGRect) {
        pageNumber = 10
        touchNumber = 10
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    deinit {
        pageNumber = 0
        print(pageNumber)
    }
    
}

class TheForthSon: TheForthView {
    
}
