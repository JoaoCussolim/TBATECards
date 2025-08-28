//
//  ContentView.swift
//  aula2SimoneProvaSampaio
//
//  Created by JULIO PACHECO STEIN on 26/08/25.
//

import SwiftUI

struct ContentView: View {
    
    let listaDog = [
        CardView(dog: dog1),
        CardView(dog: dog2),
        CardView(dog: dog3),
        CardView(dog: dog4),
        CardView(dog: dog5),
        CardView(dog: dog6)
    ]
    
    
    var body: some View {
        List {
            
            ForEach(0..<listaDog.count, id:\.self) { i in
                listaDog[i]
            }
        }
    }
}

#Preview {
    ContentView()
}
