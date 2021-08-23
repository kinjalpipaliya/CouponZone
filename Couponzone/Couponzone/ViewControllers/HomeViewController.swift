//
//  HomeViewController.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 20/08/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView! {
        didSet {
            self.collectionView.register(UINib(nibName: CellIdentifiers.OfferCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.OfferCollectionViewCell)
        }
    }
    
    @IBOutlet var tableView: UITableView! {
        didSet {
            self.tableView.register(UINib(nibName: CellIdentifiers.CouponTableViewCell, bundle: nil), forCellReuseIdentifier: CellIdentifiers.CouponTableViewCell)
        }
    }
    
    private let layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.setCollectionViewLayout(layout, animated: false)
        self.tableView.separatorStyle = .none
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.OfferCollectionViewCell, for: indexPath) as! OfferCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width-50, height: self.collectionView.frame.height)
    }
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.CouponTableViewCell, for: indexPath) as! CouponTableViewCell
        return cell
    }
}
