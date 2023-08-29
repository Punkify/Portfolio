//
//  SkillsView.swift
//  Portfolio
//
//  Created by Hrishav on 28/8/23.
//

import SwiftUI

struct SkillsView: View {
    @StateObject var appViewModel: AppViewModel
    @State var widthSize: CGFloat
    @State var showSkills = true
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16) {
                Text("Skills")
                    .font(Montserrat.bold.font(size: 20))
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkills.toggle()
                    }
               
                } label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
                
            Spacer()
            }
            if (showSkills) {
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                ForEach(appViewModel.skills, id: \.self) { skill in
                    SkillView(widthSize: widthSize / 3 - 25, skill: skill)
                        
                }
            }.padding(.top, 30)
            }
        }.padding()
      
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
        SkillsView(appViewModel: AppViewModel(appModel: AppModel()), widthSize: 400)
        }
    }
}
