//
//  AppModel.swift
//  Portfolio
//
//  Created by Hrishav on 26/8/23.
//

import Foundation


struct AppModel: Identifiable {
    var id: ObjectIdentifier?
    
    var skill: [Skill]?
    var experience: [Experience]?
    var personalDetail: [Details]?
}

struct Skill: Identifiable, Hashable {
    var id: ObjectIdentifier?
    
    var symbol: String
    var skill: String
}

struct Experience: Identifiable, Hashable {
    var id: ObjectIdentifier?
    
    var companyName: String
    var position: String
    var duration: String

}

struct Details: Identifiable, Hashable {
    var id: ObjectIdentifier?
    
    var name: String
    var description: String
    var location: String
    
}
