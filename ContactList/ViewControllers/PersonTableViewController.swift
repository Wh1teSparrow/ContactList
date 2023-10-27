//
//  PersonTableViewController.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 28.10.2023.
//

import UIKit

class PersonTableViewController: UITableViewController {

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
extension PersonTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        
        return cell
    }
}

