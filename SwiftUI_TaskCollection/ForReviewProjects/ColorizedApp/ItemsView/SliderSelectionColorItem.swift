//
//  SliderSelectionColorItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

// округление (lround(sliderValue)


import SwiftUI

struct SliderSelectionColorItem: View {
   
    let sliderColor: Color
    
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(sliderColor)
            .font(.headline)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
        }
        .padding(.bottom, 8)

    }
}
