//
//  RegisterView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 16.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Button(action: registerUser) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("Sign In")
                    }
                }
            }
            .navigationTitle("Register and Timer")
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
