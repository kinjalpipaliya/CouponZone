//
//  StoreViewController.swift
//  Couponzone
//
//  Created by Kinjal Pipaliya on 23/08/21.
//

import UIKit

class StoreViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView! {
        didSet {
            self.collectionView.register(UINib(nibName: CellIdentifiers.BrandCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.BrandCollectionViewCell)
        }
    }

    private let layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        return layout
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.setCollectionViewLayout(layout, animated: false)
    }
}

extension StoreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.BrandCollectionViewCell, for: indexPath) as! BrandCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat = 10
        return CGSize(width: (self.collectionView.frame.width/2)-padding, height: 60)
    }
}
