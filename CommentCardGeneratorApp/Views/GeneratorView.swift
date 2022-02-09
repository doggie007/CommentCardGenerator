//
//  GeneratorView.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import SwiftUI

struct GeneratorView: View {
    let enjoyment_radio = RadioButtons(choiceNames: ["A lot","Very","Not very"],question:"How much do you enjoy the subject?")
    
    let difficulty_radio = RadioButtons(choiceNames: ["Pretty tough","Manageable","EZ"],question:"How difficult do you find the subject?")
    
    @State var most_enjoyment: String = ""
    @State var most_difficult: String = ""
    @State var additionalComment: String = ""
    var body: some View {
        NavigationView {
                Form {
                    Section(header: Text("enjoyment")){
                        enjoyment_radio
                        TextField("What you enjoy most", text: $most_enjoyment)
                            .autocapitalization(.none)
                    }
                    Section(header:Text("Difficulties")){
                        difficulty_radio
                        TextField("What you find most difficult", text: $most_difficult)
                            .autocapitalization(.none)
                        
                    }
                    Section{
                        TextField("Additional comments", text: $additionalComment)
                            .autocapitalization(.none)
                    }

                    NavigationLink(destination: GeneratedCommentView(generator: generator)){
                        Text("Generate")
                            .foregroundColor(.blue)
                    }
                    
                }
                .navigationBarTitle("Generator")
        }
        }
    func generateComment()->CommentCard{
        let gen = GeneratorDetails(
         enjoyment: enjoyment_radio.selection, most_enjoyment: most_enjoyment, difficulty: difficulty_radio.selection, most_difficult: most_difficult, additionalComment: additionalComment)
        
    }
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
    }
}
