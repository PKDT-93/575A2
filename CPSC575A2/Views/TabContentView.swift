//
//  TabView.swift
//  CPSC575A2
//
//  Created by Peter Tran on 2024-09-22.
//

import SwiftUI

struct TabContentView: View {
    enum Tab {
        case switches
        case button
    }
    
    @State private var selectedTab: Tab = .switches
    @Binding var isSwitchOn: Bool
    @Binding var alert: Bool
    

    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Button(action: {
                    selectedTab = .switches
                }) {
                    Text("Switches")
                        .frame(width: 150.0, height: 50.0)
                        .background(selectedTab == .switches ? Color.blue : Color.white)
                        .foregroundColor(selectedTab == .switches ? Color.white : Color.blue)
                        .border(Color.black, width: 1)
                }
                Button(action: {
                    selectedTab = .button
                }) {
                    Text("Button")
                        .frame(width: 150.0, height: 50.0)
                        .background(selectedTab == .button ? Color.blue : Color.white)
                        .foregroundColor(selectedTab == .button ? Color.white : Color.blue)
                        .border(Color.black, width: 1)
                }
            }
            if selectedTab == .switches {
                HStack {
                    Toggle("", isOn: $isSwitchOn)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                    Toggle("", isOn: $isSwitchOn)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                .padding(.trailing, 80)
            } else {
                Button("Press me") {
                    alert = true
                }
                .alert("This button does nothing", isPresented: $alert) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("My bad")
                }
                .buttonStyle(.borderless)
            }
        }
    }
}

#Preview {
    TabContentView(isSwitchOn: .constant(false), alert: .constant(false))
}

