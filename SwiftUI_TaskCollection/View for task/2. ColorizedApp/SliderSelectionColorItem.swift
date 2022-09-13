//
//  SliderSelectionColorItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

// округление (lround(sliderValue)


import SwiftUI

struct SliderSelectionColorItem: View {
    
    let sliderColor: Color
    
    @Binding var sliderValue: Double
    @State private var valueTF = ""
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(sliderColor)
            .font(.headline)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .onChange(of: sliderValue, perform: { _ in
                    valueTF = "\(lround(sliderValue))"
                })
                .accentColor(sliderColor)
            
            TextField("Value", text: $valueTF)
                .onChange(of: valueTF, perform: { _ in
                    guard let newValueTF = Double(valueTF) else {
                        valueTF = ""
                        return
                    }
                    checking(newValueTF)
                })
                .keyboardType(.phonePad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60)
                .accentColor(sliderColor)
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(lineWidth: 3))
                .foregroundColor(sliderColor)
                .padding()
        }
        .padding(.bottom, 8)

    }
    
    private func checking(_ value: Double) {
        if value < 0 {
            sliderValue = 0
            } else if value > 255 {
                sliderValue = 255
            } else {
                sliderValue = value
            }
    }
}
