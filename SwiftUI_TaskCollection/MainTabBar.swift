//
//  MainTabBar.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 14.09.2022.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Image(systemName: "info")
                    Text("Information")
                }
            MainView()
                .tabItem {
                    Image(systemName: "checklist")
                    Text("Application collection")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
