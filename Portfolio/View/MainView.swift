//
//  ContentView.swift
//  Portfolio
//
//  Created by Hrishav on 26/8/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var appViewModel: AppViewModel = AppViewModel(appModel: AppModel())
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                DetailView()
                    .padding()
                
                SkillsView(appViewModel: appViewModel, widthSize: UIScreen.main.bounds.width - 48)
                    .padding(.top, 32)
        
                ExperiencesView(appViewModel: appViewModel)
                    .padding(.top, 42)
                }.padding(24)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
