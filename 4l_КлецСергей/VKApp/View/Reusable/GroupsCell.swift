//
//  GroupsCell.swift
//  VKApp
//
//  Created by KKK on 06.04.2021.
//

import UIKit

class GroupsCell: UITableViewCell {
    
    @IBOutlet weak var groupName:  UILabel!
    @IBOutlet weak var groupAvatar: UIImageView!
    
    
    func configate(image: UIImage, name: String ) {
        
        groupName.text = name
        groupAvatar.image = image
    }
    
}
