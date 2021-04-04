//
//  CountriesTableViewController.swift
//  TP2(Abidjan Groupe ??)
//
//  Created by mbds on 02/04/2021.
//

import UIKit
struct Country {
    var opened : Bool
    var isoCode: String
    var continent: String
    var ListPays : [[String]]
    }

class CountriesTableViewController: UITableViewController {
    
    
    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries = [
            Country(opened: false, isoCode: "EU", continent: "Europe", ListPays:[["France","fr"],["Belgique","be"],["Australie","at"],["Germany","de"],["Gréce","el"]]),
            Country(opened: false, isoCode: "AF", continent: "Afrique", ListPays:[["Côte d'Ivoire","ci"], ["Togo","tg"]]),
           
                    ]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return countries.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if countries[section].opened == true
        {
            return countries[section].ListPays.count+1
        }
        else
        {
            return 1
        }
        // #warning Incomplete implementation, return the number of rows
       
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataindex = indexPath.row - 1
        var cell : UITableViewCell
        if indexPath.row == 0{
            guard let cellule = tableView.dequeueReusableCell(withIdentifier: "CountryCell") else { return UITableViewCell()}
            cellule.textLabel?.text = countries[indexPath.section].continent
            cellule.detailTextLabel?.text = countries[indexPath.section].isoCode
            cellule.imageView?.image = UIImage(named: countries[indexPath.section].isoCode)
            cell = cellule
            cell = cellule
            //return cellule
        }
        else
        {
            guard let cellule = tableView.dequeueReusableCell(withIdentifier: "CountryCell") else { return UITableViewCell()}
            cellule.textLabel?.text = countries[indexPath.section].ListPays[indexPath.row - 1][0]
            
            cellule.detailTextLabel?.text = countries[indexPath.section].ListPays[indexPath.row - 1][1]
            cellule.imageView?.image = UIImage(named: countries[indexPath.section].ListPays[indexPath.row - 1][1])
            cell = cellule
           //return cellule
            
        }
        /*let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
                
        let country = countries[indexPath.row]
        cell.textLabel?.text = country.continent

                */return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Return false if you do not want the specified item to be editable.
        if indexPath.row == 0
        {
            if countries[indexPath.section].opened == true
            {
                countries[indexPath.section].opened = false
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
                
                
            }
            else
            {
                countries[indexPath.section].opened = true
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
                
            }
        }
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
