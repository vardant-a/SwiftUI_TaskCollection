//
//  PersonalizedViewItem.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

struct PersonalizedViewItem: View {
    
    let colorView: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(colorView)
            .frame(height: 120)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 4))

    }
}

struct PersonalizedView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalizedViewItem(colorView: .blue)
    }
}
