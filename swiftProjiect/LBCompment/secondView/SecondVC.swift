//
//  SecondVC.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/19.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

protocol SecondProtocol {
    var lastUseNumber:Int { get set }
    
    
    func theTestUseMeth()
}

class SecondVC: SelflBaseVC ,SecondProtocol {

    var lastUseNumber = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.green
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        self.theTestUseMeth()
    }
    
    func theTestUseMeth() {
        print("实现协议方法，")
    }
}
