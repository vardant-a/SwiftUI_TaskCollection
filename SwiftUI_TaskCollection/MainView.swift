//
//  MainView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationStack {
            List {
                FinishedProjectsList()
                ForReviewProjectsList()
            }
            .navigationTitle("SwiftUI HW")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
