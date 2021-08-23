//
//  BrandCollectionViewCell.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 23/08/21.
//

import UIKit

class BrandCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var mainView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func draw(_ rect: CGRect) {
        self.mainView.layer.cornerRadius = 8
    }
}
