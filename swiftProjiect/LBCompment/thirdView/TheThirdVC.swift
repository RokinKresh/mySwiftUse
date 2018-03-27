//
//  TheThirdVC.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/22.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

class TheThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.initializeUserinterface()
    }

    func initializeUserinterface() {
        self.view.backgroundColor = setSelfColor(red: 240, green: 230, blue: 140, alph: 1)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let thetestView = TheForthView()
        
        print(thetestView[2])
        
        thetestView[2] = "dayUse"
        
        print(thetestView.pageNumber)
    }

}
