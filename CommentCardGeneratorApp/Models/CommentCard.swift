//
//  CommentCard.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import Foundation

class CommentCard: StringProtocol{
    var text: String
    static func generateComment(details: Generator) -> String{
        var comment: String = ""
        let enjoyment = details.enjoyment
        let difficulty = details.difficulty

        if enjoyment == .very{
            comment += "I am really enjoying this subject. "
        }else if enjoyment == .ok{
            comment += "I am quite enjoying this subject. "
        }else {
            comment += "I feel this subject has its ups and downs. "
        }
        comment += "I have been particularly enjoying \(details.most_enjoyment). "
        
        if difficulty == .very{
            comment += "I am finding this subject very difficult. "
        }else if difficulty == .ok{
            comment += "I am finding this subject slightly difficult but fun. "
        }else{
            comment += "I am finding this subject not too difficult. "
        }
        comment += "I have been finding \(details.most_difficult) quite difficult but I will work hard to improve on this particular area. "
        
        comment += details.additionalComment
        return comment
    }
    init(details: Generator){
        self.text = CommentCard.generateComment(details: details)
    }
}
