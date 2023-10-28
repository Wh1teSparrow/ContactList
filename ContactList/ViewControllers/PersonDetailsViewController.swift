//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 28.10.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneTextLable: UILabel!
    @IBOutlet weak var mailTextLable: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneTextLable.text = "Phone: \(person.phone)"
        mailTextLable.text = "Email: \(person.mail)"
    }
}
