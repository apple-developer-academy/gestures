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
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.respondToTapGesture))
        
        //specify that the gesture has to be a single-tap (default: 1)
        tapRecognizer.numberOfTapsRequired = 1
        
        //attach the gesture to our view
        self.view.addGestureRecognizer(tapRecognizer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func respondToTapGesture() {
        print("hello")
    }


}

