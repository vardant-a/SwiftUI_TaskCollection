//
//  SliderColorItemView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

// округление (lround(sliderValue)


import SwiftUI

struct SliderColorItemView: View {
    
    @Binding var value: Double
    @State private var valueTF = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("0")
                .font(.headline)
                .foregroundColor(color)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    valueTF = newValue.formatted()
                }
            
            TextFieldColorItemView(valueTF: $valueTF, value: $value)
        }
        .onAppear {
            valueTF = value.formatted()
        }
    }
}

struct SliderColorItemView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorItemView(value: .constant(174.0), color: .indigo)
    }
}
