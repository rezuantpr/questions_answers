//
//  TSQuestionAnswerViewHandler.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class TSQuestionAnswerViewHandler: UIView {
    
    var questions: [Question]? {
        didSet {
            if let questions = questions {
                    self.question.text = questions[self.currentQuestion].text
                question.font = UIFont(name: question.font?.fontName ?? "Chalkboard", size: 26)
                question.textAlignment = .left
                
            }
        }
    }
    var answers: [Answer]? {
        didSet {
            answersList.reloadData()
        }
    }
    
    var currentQuestion: Int = 0
    
    let question = TSTextView()
    let answersList = GDTableView()
    let nextQuestion = GDButton(title: "Следующий вопрос")
    override init(frame: CGRect) {
        super.init(frame: frame)
        checkIfAutoLayout()
        
        
        addSubview(question)
        question.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        question.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        question.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
       
        addSubview(answersList)
        answersList.widthAnchor.constraint(equalTo: widthAnchor, constant: 0).isActive = true
        answersList.topAnchor.constraint(equalTo: question.bottomAnchor, constant: 2).isActive = true
        answersList.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        answersList.delegate = self
        answersList.dataSource = self
        answersList.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
       // answersList.style = UITableVie
        
        addSubview(nextQuestion)
        nextQuestion.topAnchor.constraint(equalTo: answersList.bottomAnchor, constant: 10).isActive = true
        nextQuestion.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextQuestion.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nextQuestion.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nextQuestion.addTarget(self, action: #selector(buttonHandler(ID:)), for: .touchUpInside)
        
        nextQuestion.isEnabled = false
    }
    
    @objc func buttonHandler(ID: Int) {
        goNext()
        nextQuestion.isEnabled = false

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    func goNext() {
        currentQuestion += 1
        question.text = questions![currentQuestion].text
        answersList.reloadData()
    }
    
    func endGame() {
        currentQuestion = 0
        question.text = questions![currentQuestion].text
        answersList.reloadData()
        
    }
    var selectedIndex =  -1
    var isCorrect = false
    
    var cellColor = UIColor.white

    
}

extension TSQuestionAnswerViewHandler: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //cell.view.backgroundColor = .white
        
        cell.selectionStyle = .none
        
        cell.backgroundColor = .white
        if selectedIndex == indexPath.row {
            cell.backgroundColor = cellColor
            selectedIndex = -1
        }
        cell.textLabel?.text = answers![questions![currentQuestion].possibleAnswers[indexPath.row]].text
        //  cell.isSelected = false
        
        return cell
    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

//        let cell = tableView.cellForRow(at: indexPath)
        selectedIndex = indexPath.row
        if questions![currentQuestion].checkAnswer(ID: questions![currentQuestion].possibleAnswers[indexPath.row]) {
            cellColor = .green
            nextQuestion.isEnabled = true
        } else {
            cellColor = .red
            endGame()
            
        }
        answersList.deselectRow(at: indexPath, animated: true)
        answersList.reloadData()

    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
      
        let cell = tableView.cellForRow(at: indexPath)

        cell?.contentView.backgroundColor = UIColor.clear

        print("skskksksks")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}

