//
//  SliderColorViewItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

struct SliderColorViewItem: View {
    
    let sliderColor: Color
    
    @State private var sliderValue = 0.5
    @State private var username = ""
    
    var body: some View {
        VStack {
            Text("\(lround(sliderValue))")
                .foregroundColor(sliderColor)
            
            HStack {
                Text("0").foregroundColor(sliderColor)
                    .font(.headline)
                Slider(value: $sliderValue, in: 0...255, step: 1)
                    .accentColor(sliderColor)
                
                TextField("Value", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 60)
                    .accentColor(sliderColor)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(lineWidth: 3))
                    .foregroundColor(sliderColor)
            }


        }
        .padding()

    }
}

struct SliderColorViewItem_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorViewItem(sliderColor: .red)
    }
}
