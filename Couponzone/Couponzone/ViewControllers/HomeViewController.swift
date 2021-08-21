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
    
    private let layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.setCollectionViewLayout(layout, animated: false)
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
        return CGSize(width: self.collectionView.frame.width, height: self.collectionView.frame.height)
    }
}
