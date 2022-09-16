//
//  ColorItemView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct ColorItemView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(
                Color(
                    red: red / 255,
                    green: green / 255,
                    blue: blue / 255
                )
            )
            .frame(maxWidth: .infinity, maxHeight: 150)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray.opacity(0.7), lineWidth: 4))
    }
}

struct ColorItemView_Previews: PreviewProvider {
    static var previews: some View {
        ColorItemView(
            red: 1,
            green: 13,
            blue: 14
        )
    }
}
