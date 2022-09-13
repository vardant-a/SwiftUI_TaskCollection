//
//  ColorView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

struct ColorView: View {
    
    @State private var showAlert = false
    
    @State private var redColor: Double = 255
    @State private var greenColor: Double = 0
    @State private var blueColor: Double = 0
    
    @State private var color = Color(
        red: 255 / 255,
        green: 0 / 255,
        blue: 0 / 255
    )
    
    var body: some View {
        NavigationStack {
            VStack {
                PersonalizedViewItem(colorView: color)
                    .padding()
                SliderColorViewItem(sliderColor: .red)
                SliderColorViewItem(sliderColor: .green)
                SliderColorViewItem(sliderColor: .blue)
                    .alert("Wrong format", isPresented: $showAlert, actions: {})
                
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
