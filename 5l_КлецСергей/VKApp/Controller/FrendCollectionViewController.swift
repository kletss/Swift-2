//
//  CollectionViewController.swift
//  VKApp
//
//  Created by KKK on 04.04.2021.
//

import UIKit


class FrendCollectionViewController: UICollectionViewController {

    private lazy var line = Line()

    var frend = [frendsModel]()
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrendCollectionViewCell", for: indexPath) as! FrendCollectionViewCell

        // Configure the cell
        cell.configate(frend: frend[0])
//
//        cell.nikLabel.text = "ggg"
//        cell.FIOLabel.text = "Петров"
////        cell.imageView.sizeThatFits(CGSize(width: 300, height: 300))
// //       let ss = cell.imageView.image?.size
//       cell.imageView.image = UIImage(named: "im1")!
  
        return cell
    }



}
