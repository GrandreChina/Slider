//
//  ViewController.swift
//  Slider
//
//  Created by Grandre on 16/1/20.
//  Copyright © 2016年 革码者. All rights reserved.
//

import UIKit
import CircleSlider

class ViewController: UIViewController {

    @IBOutlet weak var area圆形: UIView!
    @IBOutlet weak var slider: UISlider!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 0.0
        slider.maximumValue = 100
        slider.value = 30
        slider.continuous = true
        
        slider.addTarget(self, action: "valueChange", forControlEvents: UIControlEvents.ValueChanged)
        
        self.secondSlider()
        self.slider圆形函数()

        
    }
//    使用circleSlider前先导入框架
    var options = [
        CircleSliderOption.BarColor(UIColor(red: 198/255, green: 244/255, blue: 23/255, alpha: 0.2)),
        .ThumbColor(UIColor(red: 141/255, green: 185/255, blue: 204/255, alpha: 1)),
        .TrackingColor(UIColor(red: 78/255, green: 136/255, blue: 185/255, alpha: 1)),
        .BarWidth(20),
        .StartAngle(-45),
        .MaxValue(150),
        .MinValue(20)
    ]
    var slider圆形: CircleSlider!
//必须为circleSlider指定一个新的容器视图
    
    
    func slider圆形函数(){
        slider圆形 = CircleSlider(frame: self.area圆形.bounds, options: self.options)
        slider圆形.addTarget(self, action: "value圆形值改变", forControlEvents: UIControlEvents.ValueChanged)
        self.area圆形.addSubview(slider圆形)
        self.view.bringSubviewToFront(area圆形)
    }

    func value圆形值改变(){
        print(self.slider圆形.value)
    }
    func valueChange(){
        print(slider.value)
    }
    
    var secSlider = UISlider(frame: CGRectMake(20,400,250,100))
    
    func secondSlider(){
        
        secSlider.minimumValue = 1
        secSlider.maximumValue = 10
        secSlider.value = 3
        secSlider.continuous = true
        
        secSlider.currentMinimumTrackImage//get
//        设置左轨的图片
        secSlider.setMinimumTrackImage(UIImage(named: "1"), forState: UIControlState.Normal)
//        设置左轨颜色
        secSlider.minimumTrackTintColor = UIColor.greenColor()
//        设置滑块图片
        secSlider.setThumbImage(UIImage(named: "1"), forState: UIControlState.Normal)
//        设置滑块颜色
        secSlider.thumbTintColor = UIColor.redColor()
//        左端图片
        secSlider.minimumValueImage = UIImage(named: "1")
        
        
        
        self.view.addSubview(secSlider)
//       滑块的目标操作模式
        secSlider.addTarget(self, action: "secSliderValueChange", forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func secSliderValueChange(){
        print(secSlider.value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
 
    
    
    

    
}

