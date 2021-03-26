//
//  ViewController.swift
//  iOSCoreAnimationExam
//
//  Created by AlexanderChen on 2021/3/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let redView:UIView = UIView(frame: CGRect(x:20, y:20, width:280, height:400))
        redView.backgroundColor = UIColor.red
        self.view.insertSubview(redView, at: 0)

        let blueView:UIView = UIView(frame: CGRect(x:20, y:20, width: 280, height:400))
        blueView.backgroundColor = UIColor.blue
        self.view.insertSubview(blueView, at: 1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let transition = CATransition()
        transition.duration = 3.0
        transition.type = CATransitionType(rawValue: "cube")
        transition.subtype = .fromLeft
        self.view.exchangeSubview(at: 1, withSubviewAt: 0)
        self.view.layer.add(transition, forKey: nil)
    }


}

