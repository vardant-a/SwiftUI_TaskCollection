//
//  FinishedProjectsList.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 14.09.2022.
//

import SwiftUI

struct FinishedProjectsList: View {
    var body: some View {
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
    }
}

struct FinishedProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedProjectsList()
    }
}
