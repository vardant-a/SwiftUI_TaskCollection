//
//  ColorView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct ColorView: View {
    
    @State private var red: Double = 1
    @State private var green: Double = 1
    @State private var blue: Double = 1
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                ColorItemView(red: red, green: green, blue: blue)
                
                VStack {
                    SliderColorItemView(value: $red, color: .red)
                    SliderColorItemView(value: $green, color: .green)
                    SliderColorItemView(value: $blue, color: .blue)
                }
                .frame(width: 150)
                .focused($isInputActive)
                .navigationTitle("Colorized App")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
