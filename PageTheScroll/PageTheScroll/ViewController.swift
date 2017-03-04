//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Minh Pham on 2/26/17.
//  Copyright © 2017 Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        print("Scroll view widthd: \(scrollView.frame.size.width)")
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX:CGFloat = 0.0
            print(view.frame.midX)
            print(view.frame.size.width)
            newX = scrollView.frame.size.width/2 + scrollView.frame.size.width * CGFloat(x)
            print(newX)
            
            scrollView.addSubview(imageView)
            contentWidth += newX
            
            imageView.frame = CGRect(x: newX , y: (scrollView.frame.size.height/2) - 75, width: 150, height: 150)
        }
        
        print("Count: \(images.count)")
        scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
    



}

