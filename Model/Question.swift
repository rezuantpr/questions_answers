//
//  Question.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import Foundation

class Question {
    
    let ID: Int
    let text: String
    let possibleAnswers: [Int]
    let correctAnswerID: Int
    
    init(ID: Int, text: String, correctAnswerID: Int, possibleAnswers: [Int]) {
        
        self.ID = ID
        self.text = text
        self.correctAnswerID = correctAnswerID
        self.possibleAnswers = possibleAnswers
    }
    
    func checkAnswer(ID: Int) -> Bool {
        return ID == self.correctAnswerID
    }
    
}
