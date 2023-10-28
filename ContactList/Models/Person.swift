//
//  Person.swift
//  ContactList
//
//  Created by Kirill Syrtsev on 28.10.2023.
//

import Foundation

struct Person {
    let fullName: String
    let phone: String
    let mail: String
}

extension Person {
    static func shuffledDataStore () -> DataStore {
        let dataStore = DataStore()
        
        dataStore.names = dataStore.names.shuffled()
        dataStore.surnames = dataStore.surnames.shuffled()
        dataStore.phones = dataStore.phones.shuffled()
        dataStore.mails = dataStore.mails.shuffled()
        
        return dataStore
    }
    
    static func getPersonsList() -> [Person] {
        let dataStore = shuffledDataStore()
        var persons = [Person]()

        var currentIndex = 0
        
        while persons.count != dataStore.names.count {
            let person = Person(
                fullName: "\(dataStore.names[currentIndex]) \(dataStore.surnames[currentIndex])",
                phone: "\(dataStore.phones[currentIndex])",
                mail: "\(dataStore.mails[currentIndex])"
            )
            
            persons.append(person)
            
            currentIndex += 1
        }
        
        return persons
    }
}
