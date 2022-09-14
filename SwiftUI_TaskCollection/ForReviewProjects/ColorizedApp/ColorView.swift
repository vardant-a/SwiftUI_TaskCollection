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
    
    @FocusState private var focusFiled: FocusFiledColor?
    
    @State private var showAlert = false
    
    @State private var redColorValue = 0.1
    @State private var greenColorValue = 0.1
    @State private var blueColorValue = 0.1
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                
                PersonalizedView(
                    color: Color(
                        red: redColorValue / 255,
                        green: greenColorValue / 255,
                        blue: blueColorValue / 255
                    )
                )
                .padding(8)
                HStack {
                    SliderSelectionColorItem(
                        color: .red, sliderValue: $redColorValue
                    )
                        .focused($focusFiled, equals: .redColor)
                }
                HStack {
                    SliderSelectionColorItem(
                        color: .green, sliderValue: $greenColorValue
                    )
                        .focused($focusFiled, equals: .greenColor)
                }
                HStack {
                    SliderSelectionColorItem(
                        color: .blue, sliderValue: $blueColorValue)
                        .focused($focusFiled, equals: .blueColor)
                }
            }
            .navigationTitle("Color View")
            .toolbar(.hidden, for: .tabBar)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button{focuseUp()} label: {
                        Image(systemName: "chevron.up")
                    }
                    Button{focuseDown()} label: {
                        Image(systemName: "chevron.down")
                    }
                    Spacer()
                    
                    Button("Done", action: cheack)
                        .alert("Wrong format",
                               isPresented: $showAlert,
                               actions: {}) {Text("Please use numeric values ​​from 0 to 255")}
                }
            }
            Spacer()
        }
    }
    
    private func cheack() {
        focusFiled = nil
    }
    
    private func focuseUp() {
        switch focusFiled {
        case .none:
            return
        case .redColor:
            focusFiled = nil
        case .greenColor:
            focusFiled = .redColor
        case .blueColor:
            focusFiled = .greenColor
        
        }
    }
    
    private func focuseDown() {
        switch focusFiled {
        case .none:
            return
        case .redColor:
            focusFiled = .greenColor
        case .greenColor:
            focusFiled = .blueColor
        case .blueColor:
            focusFiled = nil
            
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
