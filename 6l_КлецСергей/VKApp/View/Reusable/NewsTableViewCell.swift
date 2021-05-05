//
//  NewsTableViewCell.swift
//  VKApp
//
//  Created by KKK on 19.04.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBOutlet weak var datePost: UILabel!
    @IBOutlet weak var frendAvatar: UIImageView!
    @IBOutlet weak var frendFIO: UILabel!
    @IBOutlet weak var textPost: UITextView!
    @IBOutlet weak var textFullPost: UITextView!
    @IBOutlet weak var imagePost: UIImageView!
    
    func configate(frend: frendsModel,
                  datePost: String,
                   textPost: String,
                   imagePost: UIImage?
    ) {
        
        self.frendAvatar.image = frend.image
        self.frendFIO.text = frend.fullname
        self.datePost.text = datePost
        self.textPost.isHidden = true
        self.textFullPost.isHidden = true
        
        
        if imagePost != nil {
            self.textPost.text = textPost
            self.textPost.isHidden = false
            self.imagePost.image = imagePost
        } else {
            self.textFullPost.isHidden = false
            self.textFullPost.text = textPost
        }
        
    }
    
    
//    @IBOutlet weak var viewBotton: UIView!
//    
//    override class var layerClass: AnyClass {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
//        gradientLayer.locations = [0 as NSNumber, 1 as NSNumber]
//        gradientLayer.startPoint = CGPoint.zero
//        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
//
//        viewBotton.layer.addSublayer(gradientLayer)
//        gradientLayer.frame = viewBotton.bounds
//
//
//        return CAShapeLayer.self
//    }

}
