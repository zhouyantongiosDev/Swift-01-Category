//
//  ViewController.swift
//  TTT
//
//  Created by zhouyantong on 2019/8/2.
//  Copyright © 2019 zhouyantong. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let yesorno = String.isBlankString(string: "123")
    let string = "qjwiejqwejqejiqwiejqeoqejqweqiweqe"
    
    let oneVC = OneViewController.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        let size:CGSize =  self.string.calculateStringSize(font: UIFont.systemFont(ofSize: 14), constrainedToSize: CGSize(width: 100, height: 40), lineBreakMode: NSLineBreakMode.byCharWrapping)
        
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.backgroundColor = UIColor.yellow
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let str = "123"
        var cell = tableView.dequeueReusableCell(withIdentifier: str)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: str)
        }
        cell?.textLabel?.text = "周彦彤"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(self.oneVC, animated: true)
    }

}

