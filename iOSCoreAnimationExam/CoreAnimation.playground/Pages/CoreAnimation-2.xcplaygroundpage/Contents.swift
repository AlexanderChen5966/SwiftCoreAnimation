//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
//CAKeyframeAnimation

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 600))
contentView.layer.borderColor = UIColor.gray.cgColor
contentView.layer.borderWidth = 1.0
contentView.backgroundColor = .white



//var box1 = UIView(frame: CGRect(x: 0, y: 25, width: 80, height: 80))
//box1.center = contentView.center
//box1.backgroundColor = .systemPink
//contentView.addSubview(box1)

var box = UIView(frame: CGRect(x: 0, y: 25, width: 50, height: 50))
box.center = contentView.center
box.backgroundColor = .systemBlue
contentView.addSubview(box)


//搖晃效果
//let keyframeAnimation = CAKeyframeAnimation()
//keyframeAnimation.keyPath = "position.x"
//keyframeAnimation.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
//keyframeAnimation.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1]
//keyframeAnimation.duration = 0.4
//keyframeAnimation.isAdditive = true
//box.layer.add(keyframeAnimation, forKey: "shake")

//-----

//使用values設定多個偏移位置
//let animation1 = CAKeyframeAnimation(keyPath: "position")
//let value1: NSValue = NSValue(cgPoint: CGPoint(x: 100, y: 100))
//let value2: NSValue = NSValue(cgPoint: CGPoint(x: 200, y: 100))
//let value3: NSValue = NSValue(cgPoint: CGPoint(x: 200, y: 200))
//let value4: NSValue = NSValue(cgPoint: CGPoint(x: 100, y: 200))
//let value5: NSValue = NSValue(cgPoint: CGPoint(x: 100, y: 300))
//let value6: NSValue = NSValue(cgPoint: CGPoint(x: 200, y: 400))
//animation1.values = [value1, value2, value3, value4, value5, value6]
//
//animation1.repeatCount = MAXFLOAT
//animation1.autoreverses = true
//animation1.duration = 4.0
//animation1.isRemovedOnCompletion = false
//animation1.fillMode = .forwards
//animation1.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut)]
//box1.layer.add(animation1, forKey: nil)

//let screenWidth = contentView.bounds.size.width
//let screenHeight = contentView.bounds.size.height
//
//let animation = CAKeyframeAnimation(keyPath: "position")
//let value7 = NSValue(cgPoint: CGPoint(x: screenWidth/2.0, y: 0))
//let value8 = NSValue(cgPoint: CGPoint(x: screenWidth, y: 100))
//let value9 = NSValue(cgPoint: CGPoint(x: 0, y: screenHeight/2.0))
//let value10 = NSValue(cgPoint: CGPoint(x: screenWidth/2.0, y: screenHeight))
//animation.values = [value7,value8,value9,value10,value7]
//animation.repeatCount = MAXFLOAT
//animation.autoreverses = true
//animation.duration = 6.0
//animation.isRemovedOnCompletion = false
//animation.fillMode = .forwards
//animation.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut)]

//box.layer.add(animation, forKey: nil)
//-----

//圓周運動
//let circleAnimation = CAKeyframeAnimation(keyPath: "position")
//let path = CGMutablePath()
////自動沿著弧度移動
//path.addEllipse(in: CGRect(x: 0, y: 50, width: contentView.bounds.width, height: 100))
//
//circleAnimation.path = path
//circleAnimation.autoreverses = true
//circleAnimation.repeatCount = MAXFLOAT
//circleAnimation.isRemovedOnCompletion = false
//circleAnimation.fillMode = .forwards
//circleAnimation.duration = 3.0
//circleAnimation.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut)]
//
//box.layer.add(circleAnimation, forKey: nil)


//直線運動
//let lineAnimation = CAKeyframeAnimation(keyPath: "position")
//let path = CGMutablePath()
////設定開始位置
//path.move(to: CGPoint(x: 0, y: 150))
//
///*
// 直線運動
// Z字軌跡
// */
//path.addLine(to: CGPoint(x: contentView.bounds.width, y: 150))
//path.addLine(to: CGPoint(x: 0, y: 300))
//path.addLine(to: CGPoint(x: contentView.bounds.width, y: 300))
//path.addLine(to: CGPoint(x: 0, y: 300))
//path.addLine(to: CGPoint(x: contentView.bounds.width, y: 150))
//
//lineAnimation.path = path
//lineAnimation.autoreverses = true
//lineAnimation.repeatCount = MAXFLOAT
//lineAnimation.isRemovedOnCompletion = false
//lineAnimation.fillMode = .forwards
//lineAnimation.duration = 6.0
//lineAnimation.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut)]
//
//box.layer.add(lineAnimation, forKey: nil)


//曲線運動
let curveAnimation = CAKeyframeAnimation(keyPath: "position")
let path = CGMutablePath()
//設定開始位置
path.move(to: CGPoint(x: 0, y: contentView.bounds.height))

//曲線運動
path.addCurve(to:CGPoint(x: contentView.bounds.width, y: contentView.bounds.height/2.0),
              control1: CGPoint(x: contentView.bounds.width/4.0, y: contentView.bounds.height/4.0),
              control2: CGPoint(x: contentView.bounds.width/2.0, y: contentView.bounds.height/2.0))


curveAnimation.path = path
curveAnimation.autoreverses = true
curveAnimation.repeatCount = MAXFLOAT
curveAnimation.isRemovedOnCompletion = false
curveAnimation.fillMode = .forwards
curveAnimation.duration = 3.0
curveAnimation.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut)]

box.layer.add(curveAnimation, forKey: nil)

PlaygroundPage.current.liveView = contentView
