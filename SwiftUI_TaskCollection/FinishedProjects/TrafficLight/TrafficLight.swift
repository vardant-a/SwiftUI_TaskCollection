//
//  TrafficLight.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct TrafficLight: View {
    
    // MARK: - @State private properties
    @State private var buttonTitle = "START"
    @State private var currentLight: CurrentLight = .off
    
    // MARK: - Body Application
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    ColorCircleView(
                        color: .red,
                        opacity: currentLight == .red ? 1: 0.3)
                    ColorCircleView(
                        color: .yellow,
                        opacity: currentLight == .yellow ? 1: 0.3)
                    ColorCircleView(
                        color: .green,
                        opacity: currentLight == .green ? 1: 0.3)
                    
                    Spacer()
                    
                    ButtonView(title: buttonTitle) {
                        if buttonTitle == "START" {
                            buttonTitle = "NEXT"
                        }
                        lightSwitching()
                    }
                }
                .navigationTitle("Traffic Light")
                .toolbar(.hidden, for: .tabBar)
            }
        }
    }
    
    // MARK: - Private methods
    private func lightSwitching() {
        switch currentLight {
        case .off:
            currentLight = .red
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}



struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
