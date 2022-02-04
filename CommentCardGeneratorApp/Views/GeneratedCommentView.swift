//
//  GeneratedCommentView.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import SwiftUI

struct GeneratedCommentView: View {
    var generator: Generator
    var body: some View {
        Text(CommentCard(details: self.generator))
    }
}

struct GeneratedCommentView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedCommentView(generator: Generator.generator_details)
    }
}
