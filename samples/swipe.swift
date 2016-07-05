//
//  ViewController.swift
//  gestures
//
//  Created by mac on 7/5/16.
//  Copyright © 2016 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var box: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // create our box and attach to the view
        box = UIView(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        box?.backgroundColor = UIColor.blackColor()
        self.view.addSubview(box!)
        
        //create and initialize our gesture recognizer
        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture))
        
        //specify the direction of the gesture
        swipeRecognizer.direction = .Left
        
        //attach the gesture to our view
        self.view.addGestureRecognizer(swipeRecognizer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    func respondToSwipeGesture() {
        print("hello")
    }


}

