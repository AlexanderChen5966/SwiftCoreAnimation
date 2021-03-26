//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

//CASpringAnimation

//一號範例：使用CASpringAnimation的彈性效果

let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 600))
contentView.layer.borderColor = UIColor.gray.cgColor
contentView.layer.borderWidth = 1.0
contentView.backgroundColor = .white

var box = UIView(frame: CGRect(x: 0, y: 25, width: 50, height: 50))
box.center.y = contentView.center.y
box.backgroundColor = .systemTeal
contentView.addSubview(box)


let spring = CASpringAnimation(keyPath: "position.x")
spring.damping = 5;
spring.stiffness = 100;
spring.mass = 1;
spring.initialVelocity = 0;
spring.fromValue = box.layer.position.x;
spring.toValue = box.layer.position.x + 150;
spring.duration = spring.settlingDuration;
box.layer.add(spring, forKey: spring.keyPath);



PlaygroundPage.current.liveView = contentView
//

//二號範例：UIView Animation和CASpringAnimation的彈性效果
//let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 700.0, height: 450.0))
//view.backgroundColor = .white
//PlaygroundPage.current.liveView = view
//
//let circularMask = { (layer: CALayer) in
//    let circularPath = UIBezierPath(arcCenter: CGPoint(x: 100.0, y: 100.0),
//                                    radius: 100.0,
//                                    startAngle: 0,
//                                    endAngle: 2.0 * .pi,
//                                    clockwise: true)
//    let maskShape = CAShapeLayer()
//    maskShape.path = circularPath.cgPath
//
//    layer.mask = maskShape
//}
//
//let firstView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))
//let secondView = UIView(frame: CGRect(x: 0.0, y: 250.0, width: 200.0, height: 200.0))
//
//firstView.backgroundColor = .yellow
//secondView.backgroundColor = .green
//
//circularMask(firstView.layer)
//circularMask(secondView.layer)
//
//view.addSubview(firstView)
//view.addSubview(secondView)
//
//let duration: TimeInterval = 3.0
//let dampingRatio: CGFloat = 0.25
//let delay: TimeInterval = 0.0
//
////UIView Animation的彈性效果
//UIView.animate(withDuration: duration,
//               delay: delay,
//               usingSpringWithDamping: dampingRatio,
//               initialSpringVelocity: 0,
//               options: [],
//               animations: {
//    firstView.frame.origin.x = 350
//}, completion: nil)
//
////使用CASpringAnimation的彈性效果
//let animation = CASpringAnimation(keyPath: "position.x")
//let toValue = 350 + secondView.frame.midX
//animation.fromValue = 0 + secondView.frame.midX
//animation.toValue = toValue
//
//animation.stiffness = 54.0
//animation.damping = 3.7
//
//animation.mass = 1
//animation.initialVelocity = 0.0
//animation.beginTime = CACurrentMediaTime() + delay
//animation.duration = animation.settlingDuration
//
//CATransaction.setCompletionBlock({
//    secondView.layer.position.x = toValue
//})
//secondView.layer.add(animation, forKey: nil)
//CATransaction.commit()

//: [Next](@next)
