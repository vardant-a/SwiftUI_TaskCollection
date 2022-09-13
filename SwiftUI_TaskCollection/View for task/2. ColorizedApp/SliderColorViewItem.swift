//
//  SliderColorViewItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

// округление (lround(sliderValue)


import SwiftUI

struct SliderColorViewItem: View {
    
    let sliderColor: Color
    
    @State private var sliderValue = 0.5
    @State private var valueTF = ""
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(sliderColor)
            .font(.headline)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
            
            TextField("Value", text: $valueTF)
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
}

struct SliderColorViewItem_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorViewItem(sliderColor: .red)
    }
}
