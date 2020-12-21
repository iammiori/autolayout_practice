//
//  mainCollectionViewCell.swift
//  autolayout_practice
//
//  Created by miori Lee on 2020/12/18.
//

import UIKit

class mainCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellView.layer.borderColor = UIColor.blue.cgColor
        cellView.layer.borderWidth = 0.5
        cellView.layer.cornerRadius = 10
    }

}
