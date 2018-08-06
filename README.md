# Lubannie

![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Swift-orange.svg) ![](https://img.shields.io/badge/download-16.8MB-blue.svg) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)

[EN](#Requirements) 


## 🤖 Requirements

* Xcode 8.0+
* Swift 4.1


## 🚀 Getting started
* Ultra-high compression algorithm
* Elegant chained grammar
* Multiple function package implementation

## 🎨 Why test the UI?

|1.The compression |2.Cover watermark |3.Insert watermark |4.Insert picture |
| ------------- | ------------- | ------------- | ------------- |
| ![](http://og1yl0w9z.bkt.clouddn.com/18-8-6/37828246.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-8-6/41647889.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-8-6/66404024.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-8-6/43419669.jpg) |
| Lubannie compression | Cover watermark text | Insert watermark text | Insert picture watermark |


## 🛠 Used

#### Example

1.Lubannie compression

```Swift
self.tableViewHeaderImageView.image = UIImage(named: imagePathString)?
.compressedImage()
```

2.Insert watermark text 

```Swift
let dict: NSDictionary = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 200),
NSAttributedStringKey.foregroundColor: UIColor.white]

self.tableViewHeaderImageView.image = UIImage(named: imagePathString)?
.compressedImage()
.addTextMark(text: "Lubannie", position: CGPoint(x:0, y:0), attributes: dict)
```

3.Insert picture watermark

```Swift
self.tableViewHeaderImageView.image = UIImage(named: imagePathString)?
.compressedImage()
.addImageMark(markImage: UIImage.init(named: imageWaterLogoString)!, position: CGRect.init(x: 0, y: 0, width: 800, height: 400))
```


## ⚖ License

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 😬 Contributions

* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
