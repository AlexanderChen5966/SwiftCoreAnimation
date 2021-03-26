//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

//CAAnimationGroup
let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 600))
contentView.layer.borderColor = UIColor.gray.cgColor
contentView.layer.borderWidth = 1.0
contentView.backgroundColor = .white

//一號範例
//var box = UIView(frame: CGRect(x: 0, y: 25, width: 50, height: 50))
//box.center = contentView.center
//box.layer.borderColor = UIColor.gray.cgColor
//box.layer.borderWidth = 2.0
//box.backgroundColor = .systemOrange
//
//contentView.addSubview(box)


//let borderColorAnimation = CABasicAnimation(keyPath: "borderColor") // 1
//borderColorAnimation.fromValue = UIColor.red.cgColor
//borderColorAnimation.toValue = UIColor.blue.cgColor
//
//let borderWidthAnimation = CABasicAnimation(keyPath: "borderWidth") // 2
//borderWidthAnimation.fromValue = 0.5
//borderWidthAnimation.toValue = 2.0
//
//let group = CAAnimationGroup() // 3
//group.duration = 2.0
//group.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
//group.beginTime = CACurrentMediaTime() + 0.2
//group.isRemovedOnCompletion = false
//group.fillMode = .forwards
//
//group.animations = [borderColorAnimation, borderWidthAnimation] // 4
//
//box.layer.add(group, forKey: nil)


var box = UIView(frame: CGRect(x: 0, y: 25, width: 50, height: 50))
box.center = contentView.center
box.backgroundColor = .white

let cycleLayer: CAShapeLayer = CAShapeLayer()
cycleLayer.lineWidth = 4
cycleLayer.fillColor = UIColor.clear.cgColor
cycleLayer.strokeColor = UIColor.black.cgColor

cycleLayer.lineCap = .round
cycleLayer.lineJoin = .round

cycleLayer.frame = box.bounds
cycleLayer.path = UIBezierPath(ovalIn: box.bounds).cgPath

contentView.addSubview(box)
box.layer.addSublayer(cycleLayer)


let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
strokeStartAnimation.duration = 3.0
strokeStartAnimation.fromValue = -1.0
strokeStartAnimation.toValue = 1.0
strokeStartAnimation.repeatCount = Float.infinity
//cycleLayer.add(strokeStartAnimation, forKey: "strokeStartAnimation")

let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
strokeEndAnimation.fromValue = 0.0
strokeEndAnimation.toValue = 1.0
strokeEndAnimation.duration = 3.0

strokeEndAnimation.repeatCount = Float.infinity
//cycleLayer.add(strokeEndAnimation, forKey: "strokeStartAnimation")

let animationGroup = CAAnimationGroup()
animationGroup.repeatCount = Float.infinity
animationGroup.animations = [strokeStartAnimation, strokeEndAnimation]
animationGroup.duration = 3.0
cycleLayer.add(animationGroup, forKey: "animationGroup")


//let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
//rotateAnimation.fromValue = 0
//rotateAnimation.toValue = Double.pi * 2
//rotateAnimation.repeatCount = Float.infinity
//rotateAnimation.duration = 3.0 * 4
//cycleLayer.add(rotateAnimation, forKey: "rotateAnimation")


PlaygroundPage.current.liveView = contentView
//: [Next](@next)
