//
//  Model.swift
//  PersonManager
//
//  Created by Nico Siegl on 29.11.21.
//

import Foundation

class Model {
    var nameArray:[[String]] = []
    
    func addName(firstName:String, lastName:String){
        if (firstName != "" || lastName != "") {
            nameArray.append([firstName,lastName])
        }
    }
    
}
