//
//  GroupsAllTableViewController.swift
//  VKApp
//
//  Created by KKK on 06.04.2021.
//

import UIKit

class GroupsAllTableViewController: UITableViewController {

        var allGroups: [groupModel] = [
        groupModel(name: "Машины", image: UIImage(named: "car")!),
        groupModel(name: "Отпуск", image: UIImage(named: "otpusk")!),
        groupModel(name: "Работа", image: UIImage(named: "work")!),
        groupModel(name: "UFO", image: UIImage(named: "ufo")!),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allGroups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsAllCell", for: indexPath) as! GroupsAllCell
        cell.textLabel?.text = allGroups[indexPath.item].name
        
        cell.imageView?.image = allGroups[indexPath.item].image
        
        //cell.imageView?.sizeThatFits(CGSize(width: 300, height: 300))
        cell.imageView?.sizeToFit()
        
        return cell
    }

    // MARK: - Table view delegate methods
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
    
}
