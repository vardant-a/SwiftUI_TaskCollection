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
            VStack {
                
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
                        sliderColor: .red, value: $redColorValue
                    )
                    TextFieldColor(color: .red, value: $redColorValue)
                        .focused($focusFiled, equals: .redColor)
                }
                HStack {
                    SliderSelectionColorItem(
                        sliderColor: .green, value: $greenColorValue
                    )
                    TextFieldColor(color: .green, value: $greenColorValue)
                        .focused($focusFiled, equals: .greenColor)
                }
                HStack {
                    SliderSelectionColorItem(
                        sliderColor: .blue, value: $blueColorValue
                    )
                    TextFieldColor(color: .blue, value: $blueColorValue)
                        .focused($focusFiled, equals: .blueColor)
                }
            }
            .padding()
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
                        .alert("Wrong format", isPresented: $showAlert, actions: {}) {Text("Please use numeric values ​​from 0 to 255")}
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

struct TextFieldColor: View {
    
    let color: Color
    
    @Binding var value: Double
    
    var body: some View {
        TextField("Value", text: $value)
            .onChange(of: value, perform: { _ in
                guard let newValue = Double(value) else {
                    value = ""
                    return
                }
                checking(newValue)
            })
            .keyboardType(.phonePad)
            .textFieldStyle(.roundedBorder)
            .frame(width: 60)
            .accentColor(color)
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(lineWidth: 3))
            .foregroundColor(color)
            .padding()
    }
    
    
    private func checking(_ value: Double) {
        if value < 0 {
            self.value = 0
        } else if value > 255 {
            self.value = 255
        } else {
            print("ищу")
        }
    }
}
