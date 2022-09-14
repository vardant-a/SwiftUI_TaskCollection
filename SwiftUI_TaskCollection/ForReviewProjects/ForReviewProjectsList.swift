//
//  ForReviewProjectsList.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 14.09.2022.
//

import SwiftUI

struct ForReviewProjectsList: View {
    var body: some View {
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
}

struct ForReviewProjects_Previews: PreviewProvider {
    static var previews: some View {
        ForReviewProjectsList()
    }
}
