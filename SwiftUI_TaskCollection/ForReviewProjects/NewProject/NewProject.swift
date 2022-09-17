//
//  NewProject.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 16.09.2022.
//

import SwiftUI

struct NewProject: View {
    
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(timer.counter.formatted())
                    .font(.largeTitle)
                    .padding(.top, 100)
                Spacer()
                
                ButtonForTimer(timer: timer)
                
                Spacer()
            }
            .navigationTitle("HW_3")
        }
    }
}

struct NewProject_Previews: PreviewProvider {
    static var previews: some View {
        NewProject()
    }
}

struct ButtonForTimer: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.indigo, lineWidth: 2))
    }
}
