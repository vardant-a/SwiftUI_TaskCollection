//
//  InfoView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 14.09.2022.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                
                Text("   Данное приложение является сборником проектов, которые реализованы в ходе прохождения 4 модуля на SwiftUI. Пока распределены в ручную без ForEach. Проекты разделены по папкам.")
                    .font(.headline)
                
                Text("   Например пройденный проект TrafficLight находится в папке FinishedProjects. Данный раздел будет пополняться по мере продвижения по модулю.")
                    .font(.headline)
                    .foregroundColor(.red)
                Spacer()
                
                Text("Version Application 0.1.4")
                    .foregroundColor(.gray)
            }
            
            .padding()
            .navigationTitle("Information")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                }
            }
            Spacer()
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
