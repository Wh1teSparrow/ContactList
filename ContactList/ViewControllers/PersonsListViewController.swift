//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 27.10.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList = Person.getPersonsList()

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        detailsVC.person = personsList[indexPath.row]
    }
}

// MARK: - Table view data source
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
