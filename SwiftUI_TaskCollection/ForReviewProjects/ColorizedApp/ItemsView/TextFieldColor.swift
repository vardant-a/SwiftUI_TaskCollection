//
//  TextFieldColor.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

//import SwiftUI
//
//struct TextFieldColor: View {
//    
//    @Binding var value: Double
//    private let color: Color
//    
//    var body: some View {
//        TextField("Value", text: $value)
//            .onChange(of: value, perform: { _ in
//                guard let newValue = Double(value) else {
//                    value = ""
//                    return
//                }
//                checking(newValue)
//            })
//            .keyboardType(.phonePad)
//            .textFieldStyle(.roundedBorder)
//            .frame(width: 60)
//            .accentColor(color)
//            .overlay(RoundedRectangle(cornerRadius: 4).stroke(lineWidth: 3))
//            .foregroundColor(color)
//            .padding()
//    }
//    
//    
//    private func checking(_ value: Double) {
//        if value < 0 {
//            self.value = 0
//            } else if value > 255 {
//                self.value = 255
//            } else {
//                print("ищу")
//            }
//    }
//}

