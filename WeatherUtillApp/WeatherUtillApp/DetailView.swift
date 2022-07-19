//
//  DetailView.swift
//  WeatherUtillApp
//
//  Created by MAC on 07/07/22.
//

import SwiftUI

struct DetailView: View {
    
    var data: WeatherData
    @State var isPopoverShowing = false
    
    var body: some View {
        VStack{
        Text("\(data.day)⭐️")
            
            Button(action: {
                isPopoverShowing = true
                
            }) {
                Text("Show Weather")
            }
            .padding()
            .sheet(isPresented: $isPopoverShowing) {
                Text("The Weather is : ")
                Text("⭐️")
                Text("H \(data.high)°L \(data.low)°F")
                Image("741E678D-62A6-45F4-BB87-B4842ED65118")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
              }
            }
        }
    }

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
