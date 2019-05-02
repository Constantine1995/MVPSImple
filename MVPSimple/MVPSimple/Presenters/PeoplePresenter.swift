//
//  PeoplePresenter.swift
//  MVPSimple
//
//  Created by mac on 5/2/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit

class PeoplePresenter {
    
    // Is owned by the presenter.
    private let peopleProvider: PeopleProvider
    // Is a weak Refenrece of the view delegate. since the presenter itself will be owned by the view
    weak private var peopleViewDeleagte: PeopleViewDelegate?
    
    init(peopleProvider: PeopleProvider) {
        self.peopleProvider = peopleProvider
    }
    
    func setViewDelegate(_ peopleViewDeleagte: PeopleViewDelegate?) {
        self.peopleViewDeleagte = peopleViewDeleagte
    }
    
    // Will be used to forward the event of selecting a person name from the view to the presenter
    func peopleNameSelected(name: String) {
        peopleProvider.getPeople(name: name) { [ weak self] person in
            guard let person = person else { return }
            self?.peopleViewDeleagte?.displayPeople(profession: person.profession)
        }
    }
}
