//
//  ContentView.swift
//  Hiking
//
//  Created by Sergio Santos on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes: [Hike] = [
        .init(name: "Salmonberry Trail", photo: "sal", miles: 6),
        .init(name: "Tom Dick, and Harray Mountain", photo: "tom", miles: 5.8),
        .init(name: "Tamanawas Falls", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    HikeDetailScreen(hike: hike)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
