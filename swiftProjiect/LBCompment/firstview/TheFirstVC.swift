//
//  TheFirstVC.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/19.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

class TheFirstVC: SelflBaseVC, ItemAddViewDelegate {
    

    static var holurlstring: String = "我是静态变量"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func initializeUserInterface() {
        self.view.backgroundColor = UIColor(red: 0xee/255, green: 0x5c/255, blue: 0x42/255, alpha: 1)
        
        //let 常量， var 变量
        let firstItem: ItemAddView = ItemAddView()
        firstItem.urlstr = "123123"
        firstItem.frame = CGRect(x: 40, y: 50, width:100, height:100)
        firstItem.backgroundColor = UIColor.yellow
        firstItem.isUserInteractionEnabled = true
        firstItem.delegate = self;
        firstItem.addTheDelegateButton()
        self.view.addSubview(firstItem)
        
        print("the text is \(firstItem.urlstr)")
        
        firstItem.urlstr = "567567"
        print("the text is \(firstItem.urlstr) and the \(TheFirstVC.holurlstring)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        self.testTheMostItedData(itemOne: "123123", theMax: 222)
    }
    
    func testTheMostItedData(itemOne:String ,theMax:Int) -> Void {
        print("Hello \(itemOne) and \(theMax)")
    }
    
    
    func callbackDelegatefuc(backMsg: String) {
        
        TheFirstVC.holurlstring += "321"
        print(backMsg + TheFirstVC.holurlstring)
    }
    
    
}












