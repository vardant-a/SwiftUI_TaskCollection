//
//  ColorView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

enum FocusFiledColor {
    case redColor, greenColor, blueColor
}

struct ColorView: View {
    
    @FocusState private var focusField: FocusFiledColor?
    
    @State private var showAlert = false
    
    @State private var redColor = 0.1
    @State private var greenColor = 0.1
    @State private var blueColor = 0.1
    
    var body: some View {
        NavigationStack {
            VStack {
                
                PersonalizedView(
                    color: Color(
                        red: redColor / 255,
                        green: greenColor / 255,
                        blue: blueColor / 255
                    )
                )
                .padding(.bottom, 8)
                
                HStack {
                    SliderSelectionColorItem(
                        sliderColor: .red,
                        sliderValue: $redColor
                    )
                }
                HStack {
                    SliderSelectionColorItem(
                        sliderColor: .green,
                        sliderValue: $greenColor
                    )
                }
                HStack {
                    SliderSelectionColorItem(
                        sliderColor: .blue,
                        sliderValue: $blueColor
                    )
                }
            }
            .navigationTitle("Color View")
            .toolbar(.hidden, for: .tabBar)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button{} label: {
                        Image(systemName: "chevron.up")
                    }
                    Button{} label: {
                        Image(systemName: "chevron.down")
                    }
                    Spacer()
                    
                    Button("Done", action: {
                    })
                        .alert("Wrong format", isPresented: $showAlert, actions: {
                        })
                }
            }
            Spacer()
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
