//
//  TheSwiftLBPCH.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/22.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit


let TheScreenHeight = UIScreen.main.bounds.size.height
let TheScreenWidth = UIScreen.main.bounds.size.width

//设置颜色
func setSelfColor(red: CGFloat ,green: CGFloat, blue: CGFloat, alph: CGFloat ) -> UIColor {
    return UIColor(red: CGFloat(red/255), green: green/255, blue: blue/255, alpha: alph)
}

func getTheSelfPicture(imageStr: String) -> UIImage {
    
    return UIImage(named:imageStr)!
    
}
