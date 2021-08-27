//
//  BrandDetailsViewController.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 27/08/21.
//

import UIKit

class BrandDetailsViewController: UIViewController {
    
    @IBOutlet weak var offerView: UIView!
    @IBOutlet weak var mainBackgroundView: UIView!
    
    @IBOutlet weak var getCouponCodeButton: UIButton!
    @IBOutlet weak var couponCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.setupView()
    }
    
    func setupView() {
        self.getCouponCodeButton.layer.cornerRadius = 8
        self.couponCodeTextField.addLineDashedStroke(pattern: [5, 5], radius: 8, color: UIColor(displayP3Red: 89/255, green: 20/255, blue: 236/255, alpha: 1).cgColor)
        self.couponCodeTextField.layer.masksToBounds = true
        self.offerView.layer.cornerRadius = 8
        self.mainBackgroundView.layer.cornerRadius = 20
    }
}
