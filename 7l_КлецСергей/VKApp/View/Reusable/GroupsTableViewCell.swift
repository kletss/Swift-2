//
//  GroupsTableViewCell.swift
//  VKApp
//
//  Created by KKK on 18.04.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    let av = AvatarAnimate()
    
    @IBAction func buttonImage(_ sender: Any) {
        av.avatarAnimate(self.groupAvatar)
    }
    
    
    @IBOutlet weak var groupAvatar: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    
    
    func configate(image: UIImage, name: String ) {
        
        groupName.text = name
        groupAvatar.image = image
    }
    

    
}
