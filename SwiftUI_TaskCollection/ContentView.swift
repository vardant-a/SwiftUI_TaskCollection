//
//  ContentView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    var HW = [TrafficLight(), ColorView()] as [Any]
    
    var body: some View {
        NavigationStack {
            List {
                Section(
                    header: Text("Finished Projects"),
                    footer: Text("Projects completed as part of the training course 'iOS developer' from SwiftBook.")) {
                    NavigationLink {
                        TrafficLight()
                    } label: {
                        Image("TrafficLight")
                        Text("Traffic Light")
                    }

                }
                
                Section(
                    header: Text("Projects for code review"),
                    footer: Text("Projects that didn't pass the review. Are in work at the moment.")) {
                    NavigationLink {
                        ColorView()
                    } label: {
                        Image("ColorView")
                        Text("Colorized App")
                    }
                }
            }
            .navigationTitle("SwiftUI HW")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
