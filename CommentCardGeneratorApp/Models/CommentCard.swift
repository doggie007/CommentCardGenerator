//
//  CommentCard.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import Foundation

class CommentCard{
    var text: String
    static func generateComment(details: Generator) -> String{
        var comment: String = ""
//        let enjoyment = details.enjoyment
//        let difficult = details.difficulty
//
//        if enjoyment == .very{
//
//        }
        comment += "I have been particularly enjoying \(details.most_enjoyment). "
        
        comment += "I have been finding \(details.most_difficult) quite difficult but I will work hard to improve on this particular area. "
        
        
        comment += details.additionalComment
        return comment
    }
    init(details: Generator){
        self.text = generateComment(details: details)
    }
}
