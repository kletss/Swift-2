//
//  GroupsAllCell.swift
//  VKApp
//
//  Created by KKK on 06.04.2021.
//

import UIKit

class AllGroupsCell: UITableViewCell {


    @IBOutlet weak var allgroupAvatar: UIImageView!
    @IBOutlet weak var allgroupName: UILabel!
    
    func configate(image: UIImage, name: String ) {
        
        allgroupName.text = name
        allgroupAvatar.image = image
    }

}
