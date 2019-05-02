//
//  ViewController.swift
//  MVPSimple
//
//  Created by mac on 5/2/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController, PeopleViewDelegate {
    
    @IBOutlet weak var professionTextField: UITextField!
    private let peoplePresenter = PeoplePresenter(peopleProvider: PeopleProvider())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peoplePresenter.setViewDelegate(self)
    }
    
    @IBAction func PersonOne(_ sender: Any) {
        peoplePresenter.peopleNameSelected(name: Person.PersonOne)
    }
    
    @IBAction func personSecond(_ sender: Any) {
        peoplePresenter.peopleNameSelected(name: Person.PersonSecond)
    }
    
    @IBAction func personThird(_ sender: Any) {
        peoplePresenter.peopleNameSelected(name: Person.PersonThird)
    }
    
    func displayPeople(profession: String) {
        professionTextField.text = profession
    }
    
    /*
     The view owns a presenter. initialized with provider class.
     
     Whenever we have an action. we call the presenter. the name Constantine action calls poepleNameSelected method. with the related name. and so and so on.
     
     And displayPeople will be called from the presenter providing the right profession.
     */
}

