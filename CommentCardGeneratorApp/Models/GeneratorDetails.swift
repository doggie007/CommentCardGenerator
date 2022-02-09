//
//  Generator.swift
//  CommentCardGeneratorApp
//
//  Created by Tcheng, James (BJH) on 04/02/2022.
//

import Foundation

struct GeneratorDetails{
    var enjoyment: Choices?
    var most_enjoyment: String = ""
    var difficulty: Choices?
    var most_difficult: String = ""
//    var performance: Choices?
    var additionalComment: String = ""
    
    static var generator_details = GeneratorDetails(enjoyment: Choices.very, most_enjoyment: "searching algorithms", difficulty: Choices.ok, most_difficult: "boolean algebra", additionalComment: "I will definitely do this subject for A-levels.")
}
