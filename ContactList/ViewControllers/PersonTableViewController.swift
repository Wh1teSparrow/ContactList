//
//  PersonTableViewController.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 28.10.2023.
//

import UIKit

class PersonTableViewController: UITableViewController {
    var personList = Person.getPersonsList()
}


// MARK: - Table view data source
extension PersonTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        
        return person.fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.phone
        
        cell.contentConfiguration = content
        
        return cell
    }
}

