//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 27.10.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    private var personsList = Person.getPersonsList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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
        
        return cell
    }
}
