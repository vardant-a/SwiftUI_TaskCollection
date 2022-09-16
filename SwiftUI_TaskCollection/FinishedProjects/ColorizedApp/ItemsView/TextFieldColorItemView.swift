//
//  TextFieldColorItemView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 16.09.2022.
//

import SwiftUI

struct TextFieldColorItemView: View {
    
    @Binding var valueTF: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("value", text: $valueTF) { _ in
            withAnimation {
                cheakValue()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
}

extension TextFieldColorItemView {
    private func cheakValue() {
        if let value = Int(valueTF), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        valueTF = "0"
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldColorItemView(valueTF: .constant("128"), value: .constant(128.0))
    }
}
