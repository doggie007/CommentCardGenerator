//
//  GeneratedCommentView.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import SwiftUI

struct GeneratedCommentView: View {
    var generator: GeneratorDetails
    var body: some View {
        NavigationView{
            VStack{
                Text("")
                Text(CommentCard(details: self.generator).text)
                    .padding()
                HStack{
                    Label("Copy",systemImage:"doc.on.doc.fill")
                    Spacer()
                    Label("Edit",systemImage:"square.and.pencil")
                    Spacer()
                    Label("Save",systemImage:"square.and.arrow.down.on.square")
                }.padding()
                
            }
        }.navigationTitle("Your New Comment")
        
        
    }
}

struct GeneratedCommentView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedCommentView(generator: GeneratorDetails.generator_details)
    }
}
