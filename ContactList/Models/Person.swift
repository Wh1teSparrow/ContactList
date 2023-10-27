//
//  Person.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 28.10.2023.
//

import Foundation

struct Person {
    let fullName: String
    let phone: Int
    let mail: String
}

extension Person {
    static func getPersonsList() -> [Person]{
        [
            Person(fullName: <#T##String#>, phone: <#T##Int#>, mail: <#T##String#>)
        ]
    }
}
