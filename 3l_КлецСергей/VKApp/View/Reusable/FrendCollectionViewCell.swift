//
//  FrendCollectionViewCell.swift
//  VKApp
//
//  Created by KKK on 06.04.2021.
//

import UIKit

class FrendCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var nikLabel: UILabel!
    @IBOutlet weak var FIOLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    func configate(frend: frendsModel ) {
        
        nikLabel.text = frend.nik
        FIOLabel.text = frend.firstname + " " + frend.lastname
        imageView.image = frend.image
    }
    
}
