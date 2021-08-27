//
//  SpecificBradDetailsViewController.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 27/08/21.
//

import UIKit

class SpecificBradDetailsViewController: UIViewController, CustomSegmentedControlDelegate {
    
    @IBOutlet weak var interfaceSegmented: CustomSegmentedControl! {
        didSet{
            interfaceSegmented.setButtonTitles(buttonTitles: ["All","Coupons","Deals"])
            interfaceSegmented.selectorViewColor = .orange
            interfaceSegmented.selectorTextColor = .orange
        }
    }
    
    @IBOutlet weak var navigationView: UIView!
    
    func setupView() {
        self.navigationView.applyShadow(color: .appGrey)
    }
    
    override func viewDidLayoutSubviews() {
        self.setupView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func change(to index: Int) {
        print("segmentedControl index changed to \(index)")
    }
}
