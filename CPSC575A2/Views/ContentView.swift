//
//  ContentView.swift
//  CPSC575A2
//
//  Created by Peter Tran on 2024-09-22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    @State private var inputNumber: String = ""
    @State private var inputName: String = ""
    @State private var sliderNumber: Double = 50
    @State private var isSwitchOn: Bool = false
    @State private var alert = false
    
    var body: some View {
        ZStack{
            VStack{
                IconView()
                    .padding(.bottom, 50)
                InputFieldView(
                    label: "Name",
                    placeholder: "Type in a name",
                    text: $inputName,
                    keyboardType: .default,
                    action: {
                        viewModel.setName(inputName)
                    }
                )
                // Number Input Field
                InputFieldView(
                    label: "Number",
                    placeholder: "Type in a number",
                    text: $inputNumber,
                    keyboardType: .numberPad,
                    actionTitle: "Set",
                    sysImg: "number",
                    action: {
                        viewModel.setNumber(inputNumber)
                    }
                )
                Divider()
                    .frame(width: 300)
                    .padding(10)
                
                Text("\(viewModel.getName())")
                    .padding(10)
                Text("\(viewModel.getNumber())")
                    .padding(.bottom, 25)
                
                SliderView(value: $sliderNumber)
                    .padding(.bottom, 25)
                TabContentView(isSwitchOn: $isSwitchOn, alert: $alert)
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
