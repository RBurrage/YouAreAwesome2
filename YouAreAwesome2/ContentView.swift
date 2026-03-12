//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Robin Burrage on 2/25/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0

    
    let messages = [
        "Personally, I enjoy Shakespeare.",
        "Did someone say treats?",
        "I love the wind in my hair!",
        "Is this alomst over?",
        "It's beach weather!!",
        "The groomer can kiss my bum.",
        "What? WHAT??!!",
        "Water, anyone?",
        "Waaaaaaaahhhh!!!!",
        "If you try to take this, I will BITE you."
    ]
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()

            Button("Show Message") {
                              
                message = messages[Int.random(in: 0...messages.count - 1)]
                imageName = "image\(Int.random(in: 0...9))"  
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
