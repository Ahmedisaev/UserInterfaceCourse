//
//  AllGroupsController.swift
//  1l_AkhmedIsaev_second_course
//
//  Created by Ahmed Isaev on 20.12.2022.
//

import UIKit

class AllGroupsController: UITableViewController {

    
    var allGroups = [
        
        Group(image: UIImage.init(named: "english_icon"), name: "English"),
        Group(image: UIImage.init(named: "hobby_icon"), name: "Hobby"),
        Group(image: UIImage.init(named: "music_icon"), name: "Music"),
        Group(image: UIImage.init(named: "music_icon"), name: "News"),
        Group(image: UIImage.init(named: "post_icon"), name: "Post"),
        Group(image: UIImage.init(named: "news_icon"), name: "News"),
        Group(image: UIImage.init(named: "english_icon"), name: "English"),
        Group(image: UIImage.init(named: "family_icon"), name: "Family"),
        Group(image: UIImage.init(named: "job_icon"), name: "Job"),
        Group(image: UIImage.init(named: "movie_icon"), name: "Movie")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allGroups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as? AllGroupsCell else {
            preconditionFailure("Error groups!")
        }

        cell.labelAllGroups.text = allGroups[indexPath.row].name
        cell.imageAllGroups.image = allGroups[indexPath.row].image
        
        return cell

    }



}
