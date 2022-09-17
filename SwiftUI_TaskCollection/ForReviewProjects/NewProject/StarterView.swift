//
//  StarterView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 17.09.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var user: UserManager
    var body: some View {
        Group {
            if user.isRegister {
                NewProject()
            } else {
                RegisterView()
            }
        }
    }
}

struct SterterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
