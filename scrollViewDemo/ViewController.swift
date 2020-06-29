//
//  ViewController.swift
//  scrollViewDemo
//
//  Created by Miki Takahashi on 2019/11/19.
//  Copyright © 2019 MikiTakahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let container = UIScrollView()
        container.translatesAutoresizingMaskIntoConstraints = false
        let size = self.view.frame.size
        container.contentSize = CGSize(width: size.width*3, height: size.height)
        container.isPagingEnabled = true
        
        self.view.addSubview(container)
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: self.view.topAnchor),
            container.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            container.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        view1.backgroundColor = UIColor.red
        
        container.addSubview(view1)
        
        
        let view2 = UIView(frame: CGRect(x: size.width, y: 0, width: size.width, height: size.height))
        view2.backgroundColor = UIColor.green
        
        container.addSubview(view2)
        
        
        let view3 = UIView(frame: CGRect(x: size.width*2, y: 0, width: size.width, height: size.height))
        view3.backgroundColor = UIColor.blue
        
        container.addSubview(view3)
        
    }


}

