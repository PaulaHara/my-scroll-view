//
//  MyScrollView.swift
//  MyScrollView
//
//  Created by paula on 2018-10-16.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

class MyScrollView: UIView {
    
    var contectSize = CGSize()
    var panGestureRecognizer = UIPanGestureRecognizer()
    
    var redView = UIView()
    var greenView = UIView()
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        addViews()
    }
    
    func addViews() {
        // Calculate the height and size of each views
        redView = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        redView.backgroundColor = UIColor.red
        self.addSubview(redView)
        
        greenView = UIView(frame: CGRect(x: 150, y: 150, width: 150, height: 200))
        greenView.backgroundColor = UIColor.green
        self.addSubview(greenView)
    }
    
}
