//
//  GameVC.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

protocol TSQuestionsHandlerDelegate {
    
}

class GameVC: UIViewController {
    
    var questions: [Question] = []
    var answers: [Answer] = []
    

    let header = GDGradient()
    let bg = GDGradient()
    
    let questionWindow = TSQuestionAnswerViewHandler()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = DataManager.shared.getQuestions()
        answers = DataManager.shared.getAnswers()
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(bg)
        bg.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 10).isActive = true
        bg.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        questionWindow.questions = questions
        questionWindow.answers = answers
       
        view.addSubview(questionWindow)
        questionWindow.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        questionWindow.topAnchor.constraint(equalTo: bg.topAnchor, constant: 5).isActive = true
        questionWindow.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        
        
        
    }
  
}
