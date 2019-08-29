//
//  Extension.swift
//  CollectionViewAssignment
//
//  Created by tunlukhant on 8/29/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    func registerForCell(stID: String) {
        register(UINib(nibName: stID, bundle: nil), forCellWithReuseIdentifier: stID)
    }
}
