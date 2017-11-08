//
//  Opinion.swift
//  QuestionOfTheDay
//
//  Created by Kalluri,Lavanya on 11/7/17.
//

import UIKit
import Foundation

@objcMembers
class Opinion: NSObject {
    // var question: QuestionOfTheDay
    var answer: Int = 0
    var objectId: String?
    
    override init(){
        super.init()
        answer = 0
    }
    
    
    init(answer:Int) {
        self.answer = answer
    }
    
}
