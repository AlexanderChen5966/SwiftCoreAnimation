//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

//CATransition
/*
 CATransition有提供type和subtype兩個屬性
 CATransitionType:指定動畫類型
 基本有提供效果
 - fade 淡入淡出(預設)
 - moveIn覆蓋
 - push 推出
 - reveal揭開
 另外有提供隱藏的效果
 - "cube" 立方體
 - "suckEffect" 收縮
 - "oglFlip" 翻轉
 - "rippleEffect" 水波動畫
 - "pageCurl" 向上翻頁效果
 - "pageUnCurl" 向下翻頁效果
 - "cameraIrisHollowOpen" 鏡頭打開
 - "cameraIrisHollowClose" 鏡頭關閉
 - "rotate" 旋轉
 
 CATransitionSubtype:指定動畫移動方向
 - fromRight 從右到左
 - fromLeft 從左到右
 - fromTop 從上到下
 - fromBottom 從下到上
 */

let windowView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 600))
windowView.backgroundColor = .white

let contentView = UIView(frame: CGRect(x: 0, y: 20, width: 200, height: 200))
contentView.center.x = windowView.center.x
contentView.backgroundColor = .black
windowView.addSubview(contentView)

var view1 = UIView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height))
view1.backgroundColor = .systemRed

var view2 = UIView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height))
view2.backgroundColor = .systemBlue

contentView.insertSubview(view1, at: 0)
contentView.insertSubview(view2, at: 1)


func setTransitionAnimationTypeAndRun(transitionType:CATransitionType = .fade, transitionSubtype:CATransitionSubtype = .fromLeft) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        let transitionAnimation = CATransition()
        //transitionAnimation.beginTime = CACurrentMediaTime() + 2.0
        transitionAnimation.duration = 2.0
        transitionAnimation.type = transitionType
        transitionAnimation.subtype = transitionSubtype
//        transitionAnimation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        contentView.layer.add(transitionAnimation, forKey: nil)
        contentView.exchangeSubview(at: 1, withSubviewAt: 0)
    }

}


struct TransitionType: RawRepresentable {
    static let fade = CATransitionType.fade
    static let push = CATransitionType.push
    static let reveal = CATransitionType.reveal
    static let moveIn = CATransitionType.moveIn
    static let cube = CATransitionType(rawValue: "cube")
    static let suckEffect = CATransitionType(rawValue: "suckEffect")
    static let oglFlip = CATransitionType(rawValue: "oglFlip")
    static let rippleEffect = CATransitionType(rawValue: "rippleEffect")
    static let pageCurl = CATransitionType(rawValue: "pageCurl")
    static let pageUnCurl = CATransitionType(rawValue: "pageUnCurl")
    static let cameraIrisHollowOpen = CATransitionType(rawValue: "cameraIrisHollowOpen")
    static let cameraIrisHollowClose = CATransitionType(rawValue: "cameraIrisHollowClose")
    static let rotate = CATransitionType(rawValue: "rotate")

    let rawValue: CATransitionType
}

//setTransitionAnimationTypeAndRun()

//fade 淡入 不支援CATransitionSubtype過渡動畫方向，設了也看不出來
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.fade)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.fade,transitionSubtype: .fromLeft)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.fade,transitionSubtype: .fromRight)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.fade,transitionSubtype: .fromBottom)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.fade,transitionSubtype: .fromTop)

//push 推出 
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.push)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.push,transitionSubtype: .fromTop)

//reveal 揭開
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.reveal)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.reveal,transitionSubtype: .fromRight)

//moveIn 覆蓋
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.moveIn)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.moveIn,transitionSubtype: .fromBottom)

//cube 立體
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.cube)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.cube,transitionSubtype: .fromTop)

//suckEffect 收縮 不支援CATransitionSubtype過渡動畫方向
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.suckEffect)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.suckEffect,transitionSubtype: .fromRight)

//oglFlip 翻轉
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.oglFlip)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.oglFlip,transitionSubtype: .fromTop)

//rippleEffect 水波效果 不支援CATransitionSubtype過渡動畫方向
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.rippleEffect)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.rippleEffect,transitionSubtype: .fromBottom)

//pageCurl 向上翻頁效果
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.pageCurl)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.pageCurl,transitionSubtype: .fromRight)

//pageUnCurl 向下翻頁效果
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.pageUnCurl)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.pageUnCurl,transitionSubtype: .fromLeft)

//cameraIrisHollowOpen 相機鏡頭打開效果 不支援CATransitionSubtype過渡動畫方向
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.cameraIrisHollowOpen)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.cameraIrisHollowOpen,transitionSubtype: .fromTop)

//cameraIrisHollowClose 相機鏡頭關閉效果 不支援CATransitionSubtype過渡動畫方向
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.cameraIrisHollowClose)
//setTransitionAnimationTypeAndRun(transitionType: TransitionType.cameraIrisHollowClose,transitionSubtype: .fromTop)

//rotate旋轉 不支援CATransitionSubtype過渡動畫方向
setTransitionAnimationTypeAndRun(transitionType: TransitionType.rotate)
PlaygroundPage.current.liveView = windowView


//: [Next](@next)
