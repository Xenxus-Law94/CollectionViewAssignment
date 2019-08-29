//
//  ViewController.swift
//  CollectionViewAssignment
//
//  Created by tunlukhant on 8/29/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewBookStore: UICollectionView!
    let numberofItemsPerRow: CGFloat = 3.0
    let spacing: CGFloat = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewBookStore.delegate = self
        collectionViewBookStore.dataSource = self
        collectionViewBookStore.registerForCell(stID: String(describing: BookStoreCollectionViewCell.self))
        let totalPadding: CGFloat = numberofItemsPerRow * spacing
        let itemWidth = (self.view.frame.width - totalPadding) / numberofItemsPerRow
        let itemHeight = (self.view.frame.height - totalPadding) / numberofItemsPerRow
        let layout = collectionViewBookStore.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
    }


}

extension ViewController : UICollectionViewDelegate {
    
}

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookStoreCollectionViewCell.self), for: indexPath) as! BookStoreCollectionViewCell
        return cell
    }
    
    
}

