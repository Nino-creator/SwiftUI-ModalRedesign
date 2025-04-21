//
//  ContentView.swift
//  SwiftUI-ModalRedesign
//
//  Created by Nina on 21.04.25.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var showFullScreen = false

    var body: some View {
        VStack(spacing: 24) {
            Text("Main Screen")
                .font(.largeTitle)
                .bold()

            Button("Go to fullscreen Modal") {
                showFullScreen = true
            }
            .font(.title2)
            .padding()
            .background(Color.blue.opacity(0.8))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .fullScreenCover(isPresented: $showFullScreen) {
            FullScreenView()
        }
    }
}

#Preview {
    ContentView()
}

