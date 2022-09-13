//
//  ColorView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

struct ColorView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                PersonalizedViewItem(colorView: .indigo)
                    .padding()
                SliderColorViewItem(sliderColor: .red)
                SliderColorViewItem(sliderColor: .green)
                SliderColorViewItem(sliderColor: .blue)
                
                Spacer()
            }
            .navigationTitle("Color View")
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
