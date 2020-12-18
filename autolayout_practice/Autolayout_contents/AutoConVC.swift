//
//  AutoConVC.swift
//  AutoConVC
//
//  Created by miori Lee on 2020/12/18.
//

import Foundation
import UIKit

class AutoConVC: UIViewController {
    
    @IBOutlet weak var collection1: UICollectionView!
    @IBOutlet weak var collection2: UICollectionView!
    
    // collecionview 데이터 더미
    var infodummuy : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: - collection view 위임
        collection1.dataSource = self
        collection1.delegate = self
        collection2.dataSource = self
        collection2.delegate = self

        // cell 등록
        collection1.register(UINib(nibName: "mainCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "mainCollectionViewCell")
        collection2.register(UINib(nibName: "mainCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "mainCollectionViewCell")
        
        // 콜렉션뷰 배경 투명하게
        collection1.backgroundView = nil
        collection1.backgroundColor = .clear
        collection2.backgroundColor = nil
        collection2.backgroundColor = .clear
        
        // collection view tag 지정
        collection1.tag = 0
        collection2.tag = 1
        
        infodummuy = ["a","b","c"]
        
        print("dd")
    }
    
    
}

//MARK: - collectionview extension
extension AutoConVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return 3
        } else if collectionView.tag == 1 {
            return 3
        } else {
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCollectionViewCell", for: indexPath) as! mainCollectionViewCell
            
            cell.placeLabel.text = infodummuy[indexPath.row]
            
            return cell
            
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCollectionViewCell", for: indexPath) as! mainCollectionViewCell
            
            cell.placeLabel.text = infodummuy[indexPath.row]
            
            return cell
            
            
        }
    }
    
    //MARK:- cell 사이의 간격
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 20
      }
    
    
    
    //MARK:- cell 사이즈( 옆 라인을 고려하여 설정 )
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

         let width = collectionView.frame.width  - 20 /// 옆 간격 20 고려
         
//         print("collectionView width=\(collectionView.frame.width)")
//         print("cell하나당 width=\(width)")
//         print("root view width = \(self.view.frame.width)")

         let size = CGSize(width: width, height: 103)
         return size
     }
    

    
}

