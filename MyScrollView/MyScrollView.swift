//
//  MyScrollView.swift
//  MyScrollView
//
//  Created by paula on 2018-10-16.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

class MyScrollView: UIView {
    
    var contentSize = CGSize()
    var panGestureRecognizer = UIPanGestureRecognizer()
    
    var tx = CGFloat()
    var ty = CGFloat()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentSize = CGSize(width: frame.width, height: frame.height)
        
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(MyScrollView.draggedView(_:)))
        self.addGestureRecognizer(panGestureRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func draggedView(_ sender:UIPanGestureRecognizer){
        let translation = sender.translation(in: self)
        
        // Two ways of doing this:
        // 1:
//        var newBounds = self.bounds
//
//        let newBoundsOriginX = newBounds.origin.x - translation.x
//        let minOriginX = CGFloat()
//        let maxOriginX = self.contentSize.width
//
//        let newBoundsOriginY = newBounds.origin.y - translation.y
//        let minOriginY = CGFloat()
//        let maxOriginY = self.contentSize.height
//
//        newBounds.origin.x = max(minOriginX, min(newBoundsOriginX, maxOriginX))
//        newBounds.origin.y = max(minOriginY, min(newBoundsOriginY, maxOriginY))
//
//        self.bounds = newBounds
        
        // 2:
        tx = tx - translation.x
        ty = ty - translation.y
        
        let newBoundsX = max(CGFloat(), min(tx, self.contentSize.width/2))
        let newBoundsY = max(CGFloat(), min(ty, self.contentSize.height/2))
        
        self.bounds = CGRect(x: newBoundsX, y: newBoundsY, width: self.bounds.width, height: self.bounds.height)
        
        // This stay always here
        sender.setTranslation(CGPoint.zero, in: self)
    }
}
