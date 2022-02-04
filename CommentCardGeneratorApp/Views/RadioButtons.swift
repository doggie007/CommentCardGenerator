//
//  RadioButtons.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import SwiftUI

struct RadioButtons: View {
    let choiceNames: [String]
    let question: String
    @State var selection: Choices = .very
    var body: some View {
        VStack{
            Text(question)
                .font(.callout)
            Picker("Something", selection: $selection){
                Text(choiceNames[0]).tag(Choices.very)
                Text(choiceNames[1]).tag(Choices.ok)
                Text(choiceNames[2]).tag(Choices.less)
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct RadioButtons_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtons(choiceNames:["A lot","Very","Not very"],
             question: "How difficult do you find the subject?")
    }
}
