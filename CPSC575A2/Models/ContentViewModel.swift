//
//  ContentViewModel.swift
//  CPSC575A2
//
//  Created by Peter Tran on 2024-09-22.
//

import Foundation

import Foundation

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var nameHasBeenSet: Bool = false
    @Published var number: String = ""
    @Published var numberHasBeenSet: Bool = false

    func setName(_ name: String) {
        self.name = name
        self.nameHasBeenSet = true
    }

    func getName() -> String {
        if !nameHasBeenSet {
            return "No name typed in yet"
        } else if name.isEmpty {
            return "Name field has been cleared"
        } else {
            return "Hello \(name)"
        }
    }

    func setNumber(_ number: String) {
        self.number = number
        self.numberHasBeenSet = true
    }

    func getNumber() -> String {
        if !numberHasBeenSet {
            return "No number typed in yet"
        } else if number.isEmpty {
            return "Number field has been cleared"
        } else {
            return "The entered number is: \(number)"
        }
    }
}

