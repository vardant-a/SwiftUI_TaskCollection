//
//  PersonalizedView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct PersonalizedView: View {
    
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(color)
            .frame(maxWidth: .infinity, maxHeight: 140)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.7), lineWidth: 4))
    }
}

struct PersonalizedView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalizedView(color: .blue)
    }
}
