//
//  CouponTableViewCell.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 23/08/21.
//

import UIKit

class CouponTableViewCell: UITableViewCell {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var discountView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func draw(_ rect: CGRect) {
        self.mainView.layer.cornerRadius = 7
        self.discountView.layer.cornerRadius = 6
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
