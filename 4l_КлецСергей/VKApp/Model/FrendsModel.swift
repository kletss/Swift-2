//
//  FrendsModel.swift
//  VKApp
//
//  Created by KKK on 05.04.2021.
//

import UIKit

    struct frendsModel {
        let nik: String
        let firstname: String
        let lastname: String
        var fullname: String  { "\(firstname)  \(lastname)" }
        let image: UIImage
}
