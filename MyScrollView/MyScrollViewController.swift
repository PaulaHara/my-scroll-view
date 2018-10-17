//
//  ViewController.swift
//  MyScrollView
//
//  Created by paula on 2018-10-12.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

class MyScrollViewController: UIViewController {

    @IBOutlet weak var myScrollView: MyScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myScrollView.setNeedsDisplay()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //self.view.bounds = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: self.view.bounds.height)
    }
}

