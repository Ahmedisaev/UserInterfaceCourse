//
//  FavouriteGroupsController.swift
//  1l_AkhmedIsaev_second_course
//
//  Created by Ahmed Isaev on 20.12.2022.
//

import UIKit

class FavouriteGroupsController: UITableViewController {
    
    
    var groups = [
        
        Group(image: UIImage.init(named: "university_logo"), name: "University"),
        Group(image: UIImage.init(named: "sport_icon"), name: "Sport")
    ]
    
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
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Получаем ячейку из пула
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTableViewCell", for: indexPath) as? GroupTableViewCell else {
            preconditionFailure("Error groups!")
        }
        
        cell.LabelGroupCell.text = groups[indexPath.row].name
        cell.ImageGroupCell.image = groups[indexPath.row].image
        
        print(indexPath.section)
        print(indexPath.row)
        
        // Configure the cell...
        
        return cell
        
    }
    
    
    @IBAction func addNewGroup(segue: UIStoryboardSegue) {
        // Откуда мы пришли. Источник откуда мы хотим перейти.
        // Проверям сегу из которой мы пришли. Если эта сега равна AllGroupsController
        if let sourceVC = segue.source as? AllGroupsController,
           // Проверяем indexPath на который мы нажали. Нажатая ячейка
           let indexPath = sourceVC.tableView.indexPathForSelectedRow {
            let group = sourceVC.allGroups[indexPath.row] // По этой ячейке, берем группу из массива allGroups
            
            if !groups.contains(where: {$0.name == group.name}) { // Если в массиве groups уже содержится искомая группа, то добавлять ее мы не будем. $0.name проверяем имя из массива groups. Проверяем group.name который нам передают из прешедшего viewController и если вся эта конструкция вернет true, то мы отрицаем это и не выполняем блок кода внутри.
                
                groups.append(group) // Передаем группу в массив groups
                tableView.reloadData() // После добавления группы в контроллер Favouritegroup, обновляем контроллер.
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

    // Override to support editing the table view.
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }

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
