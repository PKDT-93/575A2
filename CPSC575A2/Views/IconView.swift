//
//  IconView.swift
//  CPSC575A2
//
//  Created by Peter Tran on 2024-09-22.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 10, dash: [10, 10]))
            .frame(width: 250, height: 250)
            .overlay(
                Image("icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(20)
            )
    }
}

#Preview {
    IconView()
}
