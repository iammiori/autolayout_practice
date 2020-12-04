//
//  secondViewController.swift
//  talk_using_firebase
//
//  Created by miori Lee on 2020/12/03.
//

import Foundation


import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
        let eggOffAlert = UIAlertController(title: "계란 안풀기", message: "계란을 풀지 않으시겠습니까?", preferredStyle: UIAlertController.Style.alert)
                    let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default)
                    let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
                    
                    eggOffAlert.addAction(offAction)
                    eggOffAlert.addAction(cancelAction)
                    
                    present(eggOffAlert, animated: true, completion: nil)
    }
}
