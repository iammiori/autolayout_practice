//
//  ViewController.swift
//  talk_using_firebase
//
//  Created by miori Lee on 2020/11/30.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var box = UIImageView()
    var purpleView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(box)
        self.view.addSubview(purpleView)
        
        purpleView.backgroundColor = .purple
        purpleView.snp.makeConstraints { (make) in
            make.center.equalTo(view.snp.center)
            make.size.width.height.equalTo(100)
        }
//        box.snp.makeConstraints { (make) in
//            make.center.equalTo(view.snp.center)
//        }
//        box.image = UIImage(named: "splash_talk")
    }


}

