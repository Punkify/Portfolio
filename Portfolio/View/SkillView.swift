//
//  SkillView.swift
//  Portfolio
//
//  Created by Hrishav on 28/8/23.
//

import SwiftUI

struct SkillView: View {
    
    @State var widthSize: CGFloat = 120
    var skill: Skill
    var body: some View {
            
            VStack {
                Image(systemName: skill.symbol)
                    .font(.system(size: 35, weight: .medium))
                    .opacity(0.8)
                Text(skill.skill)
                    .font(Montserrat.semibold.font(size: 13.5))
                    .padding(.top, 10)
            }.padding()
            .frame(width: widthSize, height: 107.9)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .opacity(0.075)
            )
            
            
        
    
}
}
//struct SkillView_Previews: PreviewProvider {
//
//    static var previews: some View {
//       // SkillView(skill: AppViewModel(appModel: AppModel().skill?[0]))
//    }
//}
