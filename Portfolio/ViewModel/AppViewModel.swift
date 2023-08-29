//
//  AppViewModel.swift
//  Portfolio
//
//  Created by Hrishav on 26/8/23.
//

import Foundation
import UIKit


class AppViewModel: ObservableObject {
    
    @Published var appModel: AppModel = AppModel()
    
    var skills: [Skill] = [Skill(symbol: "swift", skill: "swift"),
                           Skill(symbol: "iphone", skill: "iphone"), Skill(symbol: "guitars", skill: "guitars")]
    var experiences: [Experience] = [Experience(companyName: "View 9", position: "Intern IOS", duration: "2018 jan - 2018 dec"), Experience(companyName: "AI Australia", position: "Intern IOS", duration: "2021 jan - 2021 june"), Experience(companyName: "Jetstar", position: "IOS Developer", duration: "2021 november - Present")]
    var details: [Details] =  [Details(name: "Hrishav Sunar", description: "iOS Developer", location: "Melbourne, Australia")]
    
    init(appModel: AppModel){
        self.appModel.personalDetail = details
        self.appModel.experience = experiences
        self.appModel.skill = skills
    }
    
    
 
}
