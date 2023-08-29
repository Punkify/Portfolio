//
//  DetailView.swift
//  Portfolio
//
//  Created by Hrishav on 26/8/23.
//

import SwiftUI

struct DetailView: View {
   
    @StateObject var portfolioViewModel: AppViewModel = AppViewModel(appModel: AppModel())
    var body: some View {
  
            VStack {
                Image("user")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(3)
                    .background(
                        Rectangle()
                            .foregroundColor(Color.blue)
                    )
                    .clipped()
                   // .cornerRadius(150)
                Text(portfolioViewModel.details[0].name)
                    .font(Montserrat.bold.font(size: 20))
                    .padding(.top, 0)
                    .padding(.bottom, 2)
                Text(portfolioViewModel.details[0].description)
                    .font(Montserrat.thinItalic.font(size: 15))
                HStack{
                    Image(systemName: "location")
                        .resizable()
                        .frame(width: 10, height: 10, alignment: .center)
                    Text(portfolioViewModel.details[0].location)
                        .font(Montserrat.semiboldItalic.font(size: 15))
                }
                Divider()
                    .foregroundColor(Color.primary)
             
            }
        
       
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(portfolioViewModel: AppViewModel(appModel: AppModel()))
    }
}
