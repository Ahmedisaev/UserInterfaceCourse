//
//  FavouriteFriendsController.swift
//  1l_AkhmedIsaev_second_course
//
//  Created by Ahmed Isaev on 20.12.2022.
//

import UIKit

class FavouriteFriendsController: UITableViewController {
    
    var friends = [
        friend(name: "Mike", image: UIImage.init(named: "Mike_icon")),
        friend(name: "Boris", image: UIImage.init(named: "Boris_icon")),
        friend(name: "Alex", image: UIImage.init(named: "Alex_icon")),
        friend(name: "Joe", image: UIImage.init(named: "Joe_icon")),
        friend(name: "Martha", image: UIImage.init(named: "Martha_icon")),
        friend(name: "Dmitry", image: UIImage.init(named: "Dmitry_icon")),
        friend(name: "Mark", image: UIImage.init(named: "Mark_icon")),
    
    ]
    
    //  Group(name: "Vladymir"),
    //  Group(name: "Robert")

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell", for: indexPath) as? FriendTableViewCell else {
            preconditionFailure("Errors friends!")
        }
        
        cell.ImageFriendCell.image = friends[indexPath.row].image
        cell.LabelFriendCell.text = friends[indexPath.row].name

        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FavouriteFriend",
           let destinationVC = segue.destination as? FriendsCollection,
            let indexPath = tableView.indexPathForSelectedRow
            
        {
            let friend = friends[indexPath.row].name
            
            destinationVC.title = friend
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
