//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Robin Burrage on 2/25/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Developer!"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Awesome!") {
                    message = "Awesome!"
                }
                
                Button("Great!") {
                    message = "Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
