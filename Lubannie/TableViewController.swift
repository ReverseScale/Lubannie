//
//  TableViewController.swift
//  Lubannie
//
//  Created by Steven Xie on 2018/8/4.
//  Copyright © 2018 Steven Xie. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet weak var tableViewHeaderImageView: UIImageView!
    
    lazy var backgroundLabel: WaterMarkLabel = {
        let label = WaterMarkLabel(frame: self.view.frame)
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Lubannie"
        label.lineSpacing = 40
        label.textSpacing = 8
        label.rotationAngle = -30
        return label
    }()
    
    let imagePathString = "sampleBigger.jpeg"
    let imageWaterLogoString = "iconLogo.png"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Test
    func testImageCompression() {
        
        self.tableViewHeaderImageView.image = UIImage(named: imagePathString)?
            .compressedImage()
    }
    
    func testImageWaterMark() {
        
        self.tableViewHeaderImageView.addSubview(backgroundLabel)
        self.tableViewHeaderImageView.clipsToBounds = true
    }
    
    func testImageWaterInset() {
        
        let dict: NSDictionary = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 200),
                                  NSAttributedStringKey.foregroundColor: UIColor.white]
        
        self.tableViewHeaderImageView.image = UIImage(named: imagePathString)?
            .compressedImage()
            .addTextMark(text: "Lubannie", position: CGPoint(x:0, y:0), attributes: dict)
    }
    
    func testImageWaterLogo() {
        
        self.tableViewHeaderImageView.image = UIImage(named: imagePathString)?
            .compressedImage()
            .addImageMark(markImage: UIImage.init(named: imageWaterLogoString)!, position: CGRect.init(x: 0, y: 0, width: 800, height: 400))
    }
    
    func testImageShortCut() {
        
        self.tableViewHeaderImageView.image = UIImage()
            .shortCut(view: self.view)
    }
}

extension TableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            testImageCompression()
        case 1:
            testImageWaterMark()
        case 2:
            testImageWaterInset()
        case 3:
            testImageWaterLogo()
        case 4:
            testImageShortCut()
        default:
            return
        }
    }
}
