//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by Hrishav on 29/8/23.
//

import SwiftUI

struct ExperiencesView: View {
    @StateObject var appViewModel: AppViewModel
    @State var showExperience = true
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            HStack(spacing: 16) {
                Text("Experience")
                    .font(Montserrat.bold.font(size: 20))
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperience.toggle()
                    }
               
                } label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(self.showExperience ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
                Spacer()
            
            }.padding(.bottom, 14)
            
            if (showExperience) {
      
                ForEach(appViewModel.experiences, id: \.self) { experience in
                    ExperienceView(experience: experience)
                        
                }
            }
        }
      
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperiencesView(appViewModel: AppViewModel(appModel: AppModel()))
        }
    }
}
