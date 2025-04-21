//
//  FullScreenView.swift
//  SwiftUI-ModalRedesign
//
//  Created by Nina on 21.04.25.
//


import SwiftUI

struct FullScreenView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Full screen")
                    .font(.title)
                    .bold()

                NavigationLink("Next Screen") {
                    DetailView()
                }

                Button("close") {
                    dismiss()
                }
                .padding()
                .foregroundColor(.white)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemGray)) // ✅ light gray background
            .interactiveDismissDisabled()
        }
    }
}

#Preview {
    FullScreenView()
}
