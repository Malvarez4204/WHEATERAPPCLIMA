//
//  ContentView.swift
//  WeatherUtillApp
//
//  Created by MAC on 07/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { object in
                HStack {
                    
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high)°F")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailView(data: object))
                    Image("014E866C-3310-4A0E-BBF0-E7014909992A")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 70)
                }
            }
            .navigationTitle("New York City 🗽")
            
           
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
