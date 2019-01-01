//
//  DataManager.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    
    func getAnswers() -> [Answer] {
        let array = NSArray(contentsOfFile: Bundle.main.path(forResource: "Answers", ofType: "plist")!)!
        
        
        var answers: [Answer] = []
        
        for category in array {
            let dictionary = category as! NSDictionary
            let id = dictionary.object(forKey: "id") as! Int
            let name = dictionary.object(forKey: "name") as! String
            
            let answer = Answer(id: id, text: name)
            
            answers.append(answer)
            
        }
        
        return answers
    }
    
    
    func getQuestions() -> [Question] {
        let array = NSArray(contentsOfFile: Bundle.main.path(forResource: "Questions", ofType: "plist")!)!
        
        
        var questions: [Question] = []
        
        for category in array {
            let dictionary = category as! NSDictionary
            let id = dictionary.object(forKey: "id") as! Int
            let text = dictionary.object(forKey: "text") as! String
            let correctAnswer = dictionary.object(forKey: "correctAnswer") as! Int
            
            let answersArray = dictionary.object(forKey: "answers") as! NSArray
            
            var answers: [Int] = []
            
            for answerItem in answersArray {
                let answerID = answerItem as! Int
                
                answers.append(answerID)
                
            }
            
            let question = Question(ID: id, text: text, correctAnswerID: correctAnswer, possibleAnswers: answers)
            
            questions.append(question)
            
        }
        
        return questions
        
    }
}
