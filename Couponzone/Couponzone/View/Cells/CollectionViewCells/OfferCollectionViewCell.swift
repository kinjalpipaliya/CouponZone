//
//  OfferCollectionViewCell.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 20/08/21.
//

import UIKit

class OfferCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var offerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func draw(_ rect: CGRect) {
        self.offerImageView.layer.cornerRadius = 8
    }
}
