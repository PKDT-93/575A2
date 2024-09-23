//
//  SliderView.swift
//  CPSC575A2
//
//  Created by Peter Tran on 2024-09-22.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double

    var body: some View {
        VStack {
            Slider(value: $value, in: 0...100)
                .frame(width: 200.0)
            Text("\(Int(value))")
                .foregroundColor(.blue)
        }
    }
}


#Preview {
    SliderView(value: .constant(50.0))
}
