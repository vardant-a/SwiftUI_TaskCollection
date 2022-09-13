//
//  SliderColorViewItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

struct SliderColorViewItem: View {
    
    let colorTitle: String
    
    @State private var sliderValue = 0.5
    
    var body: some View {
        HStack {
            Text(colorTitle)
            Text("0").foregroundColor(.red)
            Slider(value: $sliderValue)
                .frame(width: 140)
            Text("255").foregroundColor(.red)
            Text("\(sliderValue)")
        }
    }
}

struct SliderColorViewItem_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorViewItem(colorTitle: "Red")
    }
}
