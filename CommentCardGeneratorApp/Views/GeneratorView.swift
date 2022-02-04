//
//  GeneratorView.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import SwiftUI

struct GeneratorView: View {
    @State var generator: Generator = Generator()
//    @State var most_enjoy: String = ""
//    @State var most_difficult: String = ""
//    @State var order: Choices
    var body: some View {
        NavigationView {
                Form {
                    Section(header: Text("enjoyment")){
                        RadioButtons(choiceNames: ["A lot","Very","Not very"],question:"How much do you enjoy the subject?")
                        TextField("What you enjoy most", text: $generator.most_enjoyment)
                    }
                    Section(header:Text("Difficulties")){
                        
                        RadioButtons(choiceNames: ["Pretty tought","Manageable","EZ"],question:"How difficult do you find the subject?")
                        TextField("What you find most difficult", text: $generator.most_difficult)
                        
                    }
                    Section{
                        TextField("Additional comments", text: $generator.additionalComment)
                    }
                    Button(action:{}){
                        Text("Activate Generator")
                    }
                    
                }
                .navigationBarTitle("Generator")
        }
        }
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
    }
}