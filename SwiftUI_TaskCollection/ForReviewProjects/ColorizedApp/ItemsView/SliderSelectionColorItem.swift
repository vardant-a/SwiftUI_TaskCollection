//
//  SliderSelectionColorItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

// округление (lround(sliderValue)


import SwiftUI

struct SliderSelectionColorItem: View {
    
    let color: Color
    
    @Binding var sliderValue: Double
    
    @State private var valueTF = ""
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(color)
                .font(.headline)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            
            TextField("Value", text: $valueTF)
                .onChange(of: valueTF, perform: { _ in
                    guard let newValue = Double(valueTF) else {
                        valueTF = ""
                        return
                    }
                    checking(newValue)
                })
                .keyboardType(.phonePad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60)
                .accentColor(color)
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(lineWidth: 3))
                .foregroundColor(color)
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
        
        valueTF = "\(lround(value))"
    }
}
    
    

