//
//  TheForthVC.swift
//  swiftProjiect
//
//  Created by luobin on 2018/3/22.
//  Copyright © 2018年 luobin. All rights reserved.
//

import UIKit

class TheForthVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var showview:UITableView!
    let arry:[String] = ["fsodi", "我从哪里来", "要到哪里去", "modelfo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.initializeUserInterface()
    }

    private func initializeUserInterface() {
        
        var momo = TheScreenHeight
        
        print(momo)
        momo = 15
        
        self.view.backgroundColor = UIColor(red: 0x17/255, green: 0x7c/255, blue: 0xb0/255, alpha: 1)
        
        let rect = self.view.frame
        showview = UITableView(frame: rect)
        showview.delegate = self;
        showview.dataSource = self;
        showview.backgroundColor = UIColor.clear
        
        self.view .addSubview(showview)
        showview.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
    }
    
    //设置cell的数量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arry.count
    }
    
    //设置section的数量
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //设置tableview的cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (showview.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)) as UITableViewCell
        
        cell.textLabel?.text = arry[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        print("the selected item\(arry[indexPath.row])")
    }

}
