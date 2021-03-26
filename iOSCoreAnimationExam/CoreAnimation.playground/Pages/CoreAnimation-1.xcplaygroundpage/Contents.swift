//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

/*
 Core Animation，並非UIView
 CAAnimation是所有動畫的父類別
 
 動畫類別中有提供
 1. CABasicAnimation  基礎動畫

 2. CAKeyframeAnimation  關鍵幀動畫

 3. CATransition 轉場動畫

 4. CAAnimationGroup 群組動畫

 5. CASpringAnimation 彈性動畫 （iOS9.0之後，實現彈簧效果的動畫，是CABasicAnimation的子類別。）


 */

//CABasicAnimation
let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
contentView.layer.borderColor = UIColor.gray.cgColor
contentView.layer.borderWidth = 1.0
contentView.backgroundColor = .white


var box = UIView(frame: CGRect(x: 0, y: 25, width: 50, height: 50))
//box.center = contentView.center
box.backgroundColor = .systemBlue
contentView.addSubview(box)

//移動位置動畫

//UIView.animate的做法
//UIView.animate(withDuration: 1.0){
//    box.frame = box.frame.offsetBy(dx: 250, dy: 0)
//}

//接著使用CABasicAnimation再做一次
//let caBasicAnimation = CABasicAnimation(keyPath: "position")
//
////開始位置
//caBasicAnimation.fromValue = box.layer.position
//
////移動到的位置
//caBasicAnimation.toValue = box.frame.offsetBy(dx: 250, dy: 25)
//caBasicAnimation.duration = 1.0
//
//caBasicAnimation.beginTime = CACurrentMediaTime() + 1
//caBasicAnimation.repeatCount = 3
////caBasicAnimation.autoreverses = true
//caBasicAnimation.fillMode = .forwards
//caBasicAnimation.isRemovedOnCompletion = false
//box.layer.add(caBasicAnimation, forKey: "addLayerAnimationPosition")


// 透明度 opacity
//let opacityCABasicAnimation = CABasicAnimation(keyPath: "opacity")
//opacityCABasicAnimation.fromValue = 0
//opacityCABasicAnimation.toValue = 1
//opacityCABasicAnimation.duration = 3
//box.layer.add(opacityCABasicAnimation, forKey: "addOpacity")

// 變大與位置 bounds
//let boundsCABasicAnimation = CABasicAnimation(keyPath: "bounds")
//boundsCABasicAnimation.toValue = CGRect(x: 200, y: 0, width: 100, height: 100)
//boundsCABasicAnimation.duration = 3
//box.layer.add(boundsCABasicAnimation, forKey: "changeBounds")

//由小變大bounds
//let boundSizeCABasicAnimation = CABasicAnimation(keyPath: "bounds.size")
//boundSizeCABasicAnimation.fromValue = box.bounds.size
//boundSizeCABasicAnimation.toValue = CGSize(width: box.layer.bounds.size.width + 20, height: box.layer.bounds.size.height + 20)
//boundSizeCABasicAnimation.duration = 3
//box.layer.add(boundSizeCABasicAnimation, forKey: "changeBoundSize")

//漸變圓角
//let cornerCABasicAnimation = CABasicAnimation(keyPath: "cornerRadius")
//let cornerCABasicAnimation = CABasicAnimation(keyPath: #keyPath(CALayer.cornerRadius))

//let cornerCABasicAnimation = CABasicAnimation(keyPath: NSExpression(forKeyPath: \CALayer.cornerRadius).keyPath)
//cornerCABasicAnimation.toValue =  box.layer.bounds.size.height / 2
//cornerCABasicAnimation.duration = 3
//box.layer.add(cornerCABasicAnimation, forKey: "addCornerRadius")

//改變顏色
//let colorCABasicAnimation = CABasicAnimation(keyPath: "backgroundColor")
//colorCABasicAnimation.toValue =  UIColor.systemGreen.cgColor
//colorCABasicAnimation.duration = 2
//box.layer.add(colorCABasicAnimation, forKey: "changeBackgroundColor")

//改變邊框border大小
//let borderCABasicAnimation = CABasicAnimation(keyPath: "borderWidth")
//borderCABasicAnimation.toValue =  10
//borderCABasicAnimation.duration = 2
//box.layer.add(borderCABasicAnimation, forKey: "changeBorder")

//縮放
//let scaleCABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
//scaleCABasicAnimation.fromValue = 1.0
//scaleCABasicAnimation.toValue =  0.5
//scaleCABasicAnimation.duration = 2
//box.layer.add(scaleCABasicAnimation, forKey: "changeScale")


//旋轉Y軸
let rotateYCABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.y")
rotateYCABasicAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
rotateYCABasicAnimation.toValue =  Double.pi
rotateYCABasicAnimation.duration = 2
box.layer.add(rotateYCABasicAnimation, forKey: "changeScale")

//旋轉Z軸
//let rotateZCABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
//rotateZCABasicAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
//rotateZCABasicAnimation.toValue =  Double.pi * 2
//rotateZCABasicAnimation.duration = 2
//box.layer.add(rotateZCABasicAnimation, forKey: "changeScale")

//橫向移動沿X軸
let translateXCABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
translateXCABasicAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
translateXCABasicAnimation.toValue = -20
translateXCABasicAnimation.duration = 2
box.layer.add(translateXCABasicAnimation, forKey: "changeScale")



//UIView.animate(withDuration: 2.0) {
//    box.bounds.size = CGSize(width: 50, height: 50)
////    box.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
////    box.center = contentView.center
////    box.layer.cornerRadius = 25
//}

//let animation = CABasicAnimation(keyPath: "bounds")
//animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
//animation.fillMode = .forwards
//animation.isRemovedOnCompletion = false
//animation.fromValue = box.bounds
//animation.toValue = CGRect(x: 0, y: 0, width: 50, height: 50)
//animation.duration = 2
//box.layer.add(animation, forKey: nil)

//
//let cornerAnimation = CABasicAnimation(keyPath: #keyPath(CALayer.cornerRadius))
//cornerAnimation.fromValue = 50
//cornerAnimation.toValue = 25
//cornerAnimation.duration = 1.0
//
//box.layer.cornerRadius = 25
//box.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//box.center = contentView.center
//box.layer.add(cornerAnimation, forKey: #keyPath(CALayer.cornerRadius))


PlaygroundPage.current.liveView = contentView

//: [Next](@next)
