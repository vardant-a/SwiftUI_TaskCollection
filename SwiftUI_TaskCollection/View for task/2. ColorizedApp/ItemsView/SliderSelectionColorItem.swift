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
        }
        .padding(.bottom, 8)

    }
}
