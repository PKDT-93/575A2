//
//  InputFieldView.swift
//  CPSC575A2
//
//  Created by Peter Tran on 2024-09-22.
//

import SwiftUI

struct InputFieldView: View {
    let label: String
    let placeholder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var actionTitle: String? = nil
    var action: (() -> Void)? = nil

    var body: some View {
        HStack {
            Text("\(label): ")
            TextField(placeholder, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(keyboardType)
                .onSubmit {
                    action?()
                }
            if let actionTitle = actionTitle, let action = action {
                Button(actionTitle) {
                    action()
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    InputFieldView(
        label: "Test",
        placeholder: "Enter text",
        text: .constant("Sample"),
        actionTitle: "Submit",
        action: {
            print("Button pressed")
        }
    )
}
