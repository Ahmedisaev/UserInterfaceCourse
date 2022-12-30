//
//  AllGroupsController.swift
//  1l_AkhmedIsaev_second_course
//
//  Created by Ahmed Isaev on 20.12.2022.
//

import UIKit

class AllGroupsController: UITableViewController {

    
    var groups = [
      //  Group(name: "Mike"),
      //  Group(name: "Boris"),
      //  Group(name: "Alex"),
      //  Group(name: "Joe"),
      //  Group(name: "Martha"),
      //  Group(name: "Dmitry"),
      //  Group(name: "Mark"),
      //  Group(name: "Vladymir"),
      //  Group(name: "Robert")
        
        Group(image: UIImage.init(named: "english_icon"), name: "English"),
        Group(image: UIImage.init(named: "hobby_icon"), name: "Hobby"),
        Group(image: UIImage.init(named: "music_icon"), name: "Music"),
        Group(image: UIImage.init(named: "music_icon"), name: "News"),
        Group(image: UIImage.init(named: "post_icon"), name: "Post"),
        Group(image: UIImage.init(named: "news_icon"), name: "News")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as? AllGroupsCell else {
            preconditionFailure("Error groups!")
        }

        cell.labelAllGroups.text = groups[indexPath.row].name
        cell.imageAllGroups.image = groups[indexPath.row].image
        
        return cell

    }



}
