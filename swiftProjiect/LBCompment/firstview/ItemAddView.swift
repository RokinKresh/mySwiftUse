//
//  ItemAddView.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/19.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

@objc protocol ItemAddViewDelegate {
    func callbackDelegatefuc(backMsg:String)
}

class ItemAddView: UIView {

    var urlstr: String!
    weak var delegate:ItemAddViewDelegate?
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    func addTheDelegateButton() {
        
        let button = UIButton()
        button.frame = CGRect(x: 20, y: 20, width:60, height:40)
        button.backgroundColor = UIColor.green
        button.setTitle("title", for:.normal)
        button.addTarget(self, action:#selector(tapped(_:)), for: .touchUpInside)
        
        self.addSubview(button)
        
    }
    
    @objc func tapped(_ button:UIButton){
        print(button.title(for: .normal) as Any)
        
        if delegate != nil {
            delegate?.callbackDelegatefuc(backMsg: "666")
        }
    }
    
}
