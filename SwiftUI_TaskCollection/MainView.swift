//
//  MainView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct MainView: View {
    @State private var isShowInfoView = false
    
    var body: some View {
        NavigationStack {
            List {
                FinishedProjectsList()
                ForReviewProjectsList()
            }
            .navigationTitle("Homework collection")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button { isShowInfoView.toggle() } label: {
                        Image(systemName: "info.circle")
                    }
                }
            }
            .fullScreenCover(isPresented: $isShowInfoView) {
                InfoView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
