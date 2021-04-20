//
//  TableViewController.swift
//  VKApp
//
//  Created by KKK on 04.04.2021.
//

import UIKit

class FrendsTableViewController: UITableViewController {

    
//private var myControl = FrendsController()
 
    var frends_all: [frendsModel]  = [
        frendsModel(nik: "Леха", firstname: "Алексей", lastname: "Алексеев",image: UIImage(named: "im1")!),
        frendsModel(nik: "Мишаня", firstname: "Михаил", lastname: "Михайлов",image: UIImage(named: "im2")!),
        frendsModel(nik: "Леонид", firstname: "Леонид", lastname: "Александров",image: UIImage(named: "im3")!),
        frendsModel(nik: "Саня", firstname: "Алексендр", lastname: "Ogorod",image: UIImage(named: "im4")!),
    ]
    
    var frends = [frendsSections]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frends_all.sort(by: {$0.nik < $1.nik})
        
        frends_all.forEach { ff_all in
            var ll = false
            if frends.count > 0 {
                for ff in 0...frends.count-1 {
    //            for (ii, ff ) in frends {
                    if  frends[ff].section == ff_all.section {
                        frends[ff].rows.append(ff_all)
                        ll = true
                    }
                }
            }
            if !ll {
                frends.append(frendsSections(section: ff_all.section, rows: [ff_all]))
            }

        }
     
        // Register the custom header view.
//        tableView.register(MyCustomHeader.self,
//            forHeaderFooterViewReuseIdentifier: "sectionHeader")
//
        
//       view.addSubview(myControl)
//        tableView.reloadData()

//        self.tableView.register(
//            FrendsCell.self,
//            forCellReuseIdentifier: "FrendsCell_Ind11"
//        )
   }

    // MARK: - Table view data source
    @IBOutlet var FrandsTableView: UITableView!


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return frends.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return frends[section].rows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FrendsCell_Ind", for: indexPath) as! FrendsCell
//        cell.textLabel?.text = frends[indexPath.item].nik
//        cell.imageView?.image = frends[indexPath.item].image
//        cell.accessoryType = .disclosureIndicator
//
        
//        cell.configate(image: frends[indexPath.item].image, nik: frends[indexPath.item].nik+" "+section)
//        print(indexPath.section)
        cell.configate(image: frends[indexPath.section].rows[indexPath.row].image, nik: frends[indexPath.section].rows[indexPath.row].nik)
        
        
        return cell
    }
    
    // MARK: - Table view delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // MARK: - Передача данных в FrendCollectionViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "presentFrendCollection" else { return }
        guard let destination = segue.destination as? FrendCollectionViewController else { return }
        let ind = self.tableView.indexPathForSelectedRow
        print(ind!.row)
      //  destination.frend.append(frends[ind!.item])
        destination.frend.append(frends[ind!.section].rows[ind!.row])
    }
    
    
//    override func tableView(_ tableView: UITableView,
//            viewForHeaderInSection section: Int) -> UIView? {
//       let view = tableView.dequeueReusableHeaderFooterView(withIdentifier:
//                   "sectionHeader") as! MyCustomHeader
//       view.title.text = sectionLetter[section]
//   //    view.image.image = UIImage(named: sectionImages[section])
//
//       return view
//    }
    
    // Create a standard header that includes the returned text.
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return   String(frends[section].section)
    }
    
}
