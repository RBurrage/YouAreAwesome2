//
//  LaunchScreenView.swift
//  YouAreAwesome2
//
//  Created by Robin Burrage on 3/18/26.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.purple]),
                               startPoint: .topTrailing,
                               endPoint: .bottomLeading
                )
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.white)
                        .padding()
                    
                    Text("Loading...")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                }
            }
            .onAppear {
                DispatchQueue.main
                    .asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            isActive = true
                        }
                    }
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
