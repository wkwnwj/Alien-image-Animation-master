//
//  ViewController.swift
//  Alien image Animation
//
//  Created by D7703_22 on 2018. 4. 4..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var count: UILabel!
    
    var index = 1
    var file = "right"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지 보이기
        myimageview.image = UIImage(named: "frame1.png")
        count.text = String(1)
    }


    @IBAction func update(_ sender: Any) {
        
        if file == "right"{
            index = index + 1
            // file이 right이면 index를 1씩 증가
            if index == 5{
                file = "left"
            // index가 5가되면 왼쪽으로 이동
            }
        }else if file == "left"{
            index = index - 1
            // file이 left이면 index를 1씩 감소
            if index == 1{
                file = "right"
            // index가 1이되면 오른쪽으로 이동
            }
        }
        
        myimageview.image = UIImage(named: "frame\(index).png")
        //이미지를 보여지게
        count.text = String(index)
        //label에 숫자를 표시
    }
    
}

