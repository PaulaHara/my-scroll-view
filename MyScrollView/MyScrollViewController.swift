//
//  ViewController.swift
//  MyScrollView
//
//  Created by paula on 2018-10-12.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

class MyScrollViewController: UIViewController {

    var myScrollView: MyScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myScrollView = MyScrollView(frame: view.bounds)
        myScrollView.backgroundColor = UIColor.gray
        view.addSubview(myScrollView)
        
        myScrollView.clipsToBounds = true
        
        addViews()
    }
    
    func addViews() {
        // Calculate the height and size of each views
        let redView = UIView(frame: CGRect(x: 20, y: 50, width: 100, height: 100))
        redView.backgroundColor = UIColor.red
        myScrollView.addSubview(redView)
        
        let greenView = UIView(frame: CGRect(x: 150, y: 180, width: 150, height: 200))
        greenView.backgroundColor = UIColor.green
        myScrollView.addSubview(greenView)
        
        let blueView = UIView(frame: CGRect(x: 40, y: 430, width: 200, height: 150))
        blueView.backgroundColor = UIColor.blue
        myScrollView.addSubview(blueView)
        
        let yellowView = UIView(frame: CGRect(x: 100, y: 700, width: 180, height: 150))
        yellowView.backgroundColor = UIColor.yellow
        myScrollView.addSubview(yellowView)
    }
}

