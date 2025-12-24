//
//  ContentView.swift
//  Elvis
//
//  Created by app-kaihatsusha on 24/12/2025.
//  Copyright © 2025 app-kaihatsusha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageSymbol = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: imageSymbol)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageSymbol = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    imageSymbol = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageSymbol = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
