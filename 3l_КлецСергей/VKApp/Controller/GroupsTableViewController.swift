//
//  GroupsTableViewController.swift
//  VKApp
//
//  Created by KKK on 06.04.2021.
//

import UIKit

class GroupsTableViewController: UITableViewController {
    
       var myGroups = [groupModel]()
    
      @IBAction func addGroup(segue: UIStoryboardSegue) {
        guard
            segue.identifier == "addGroup",
            let groupsAllTableViewController = segue.source as? GroupsAllTableViewController,
            let indexPath = groupsAllTableViewController.tableView.indexPathForSelectedRow
        else {
            return
        }

        let ind = groupsAllTableViewController.allGroups[indexPath.row]
        if !myGroups.contains(ind) {
            myGroups.append(ind)
            let index = IndexPath(row:  myGroups.count-1, section: 0)
            tableView.insertRows(at: [index], with: .automatic)
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupsCell
        cell.textLabel?.text = myGroups[indexPath.item].name
        
        cell.imageView?.image = myGroups[indexPath.item].image
        
        //cell.imageView?.sizeThatFits(CGSize(width: 300, height: 300))
        //cell.imageView?.sizeToFit()
        
        return cell
    }
    
    // MARK: - Table view delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
