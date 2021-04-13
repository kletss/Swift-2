//
//  TableViewController.swift
//  VKApp
//
//  Created by KKK on 04.04.2021.
//

import UIKit

class FrendsTableViewController: UITableViewController {
    
    let myIdentifier = "FrendsCell"
    
    var frends: [frendsModel] = [
        frendsModel(nik: "Леха", firstname: "Алексей", lastname: "Алексеев",image: UIImage(named: "im1")!),
        frendsModel(nik: "Миха", firstname: "Михаил", lastname: "Михайлов",image: UIImage(named: "im2")!),
        frendsModel(nik: "Саня", firstname: "Александр", lastname: "Александров",image: UIImage(named: "im3")!),
        frendsModel(nik: "Mikl", firstname: "Mikl", lastname: "Ogorod",image: UIImage(named: "im4")!),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.tableView.register(
//            FrendsCell.self,
//            forCellReuseIdentifier: reuseIdentifier
//        )
    }

    // MARK: - Table view data source
    @IBOutlet var FrandsTableView: UITableView!


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return frends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: myIdentifier, for: indexPath) as! FrendsCell
        cell.textLabel?.text = frends[indexPath.item].nik
        
        cell.imageView?.image = frends[indexPath.item].image
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    // MARK: - Table view delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // MARK: - Пеедача данных в FrendCollectionViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "presentFrendCollection" else { return }
        guard let destination = segue.destination as? FrendCollectionViewController
              else { return }
        let ind = self.tableView.indexPathForSelectedRow
        
        destination.frend.append(frends[ind!.item])
    }
}
