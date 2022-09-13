//
//  ColorView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

//enum FocusText {
//    case
//}

struct ColorView: View {
//    @FocusState private var focusField: FocusText?
    
    @State private var showAlert = false
    
    @State private var redColor = 0.1
    @State private var greenColor = 0.1
    @State private var blueColor = 0.1
    
    var body: some View {
        NavigationStack {
            VStack {
                PersonalizedViewItem(
                    colorView: Color(
                        red: redColor / 255,
                        green: greenColor / 255,
                        blue: blueColor / 255
                    )
                )
                .padding(.bottom, 8)
                
                SliderSelectionColorItem(
                    sliderColor: .red,
                    sliderValue: $redColor
                )
                SliderSelectionColorItem(
                    sliderColor: .green,
                    sliderValue: $greenColor
                )
                SliderSelectionColorItem(
                    sliderColor: .blue,
                    sliderValue: $blueColor
                )
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Button{} label: {
                                Image(systemName: "chevron.up")
                            }
                            Button{} label: {
                                Image(systemName: "chevron.down")
                            }
                            Button("Done", action: {
                            })
                                .alert("Wrong format", isPresented: $showAlert, actions: {
                                })
                        }
                    }
                Spacer()
            }
            .padding()
            .navigationTitle("Color View")
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
