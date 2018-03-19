//
//  TheFirstVC.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/19.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

class TheFirstVC: SelflBaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func initializeUserInterface() {
        self.view.backgroundColor = UIColor(red: 0xee/255, green: 0x5c/255, blue: 0x42/255, alpha: 1)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        self.testTheMostItedData(itemOne: "123123", theMax: 222)
    }
    
    func testTheMostItedData(itemOne:String ,theMax:Int) -> Void {
        print("Hello \(itemOne) and \(theMax)")
    }
    
    
    
}












