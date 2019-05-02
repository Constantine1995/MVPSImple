//
//  Provider.swift
//  MVPSimple
//
//  Created by mac on 5/2/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

typealias PeopleHandler = (People?) -> Void

// Will play the role of data provider. Returns a model by its name.
class PeopleProvider {
   
    func getPeople(name: String, completion: PeopleHandler) {
        let person = [People(name: "Constantine", profession: "IOS Developer"),
                      People(name: "Dmytro", profession: "Web Developer"),
                      People(name: "Nikolay", profession: "Android Developer")
        ]
        
        if let foundPerson = person.first(where: {$0.name == name}) {
            completion(foundPerson)
        } else {
            completion(nil)
        }
    }
}
