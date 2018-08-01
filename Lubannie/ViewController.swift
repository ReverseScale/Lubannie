//
//  ViewController.swift
//  Lubannie
//
//  Created by Steven Xie on 2018/7/31.
//  Copyright © 2018年 Steven Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    lazy var backgroundLabel: WaterMarkLabel = {
        let label = WaterMarkLabel(frame: self.view.frame)
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Github"
        label.lineSpacing = 40
        label.textSpacing = 8
        label.rotationAngle = -30
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testImageWaterMark()
        
//        testImageWaterInset()
        
//        testImageWaterLogo()
        
//        testImageShortCut()
    }
    
    func testImageWaterMark() {
        
        self.imageView.image = UIImage(named: "sampleBigger.jpeg")?.compressedImage()
        // 水印层遮罩
//        self.imageView.addSubview(backgroundLabel)
//        self.imageView.clipsToBounds = true
    }
    
    func testImageWaterInset() {

        let dict: NSDictionary = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 36),
                                  NSAttributedStringKey.foregroundColor: UIColor.gray]
        
        self.imageView.image = UIImage(named: "scenes.png")?.addTextMark(text: "Git", position: CGPoint(x:100, y:100), attributes: dict)
    }
    
    func testImageWaterLogo() {
        
        self.imageView.image = UIImage(named: "scenes.png")?.addImageMark(markImage: UIImage.init(named: "iconLogo.png")!, position: CGRect.init(x: 0, y: 0, width: 44, height: 44))
    }
    
    func testImageShortCut() {
        self.imageView.image = UIImage().shortCut(view: self.view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

