//
//  InfoView.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 14.09.2022.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Алексей, здравствуйте!")
                    .font(.title)
                    .padding(.bottom, 8)
                
                Text("Данное приложение является сборником проектов, которые реализованы в ходе 4 модуля на SwiftUI. Пока распределены в ручную без ForEach. Проекты разделены по папкам.")
                    .font(.headline)
                    .padding(.bottom, 8)
                
                Text("Например пройденный проект TrafficLight находится в папке FinishedProjects. Данный раздел будет пополняться по мере продвижения по модулю.")
                    .font(.headline)
                    .foregroundColor(.red)
                    .padding(.bottom, 8)
                
                Text("Projects for code review - проекты, которые ещё не были проверены вами. Swift файлы находятся в папке ForReviewProjects под соответствующим названием. Постарался соблюсти иерархию. Если так делать нельзя - в дальнейшем ДЗ будут сдаваться отдельными проектами.")
                    .font(.headline)
            }
            .padding()
            .navigationTitle("Information")
            Spacer()
        }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
