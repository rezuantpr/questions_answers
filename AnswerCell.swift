//
//  AnswerCell.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class AnswerCell: UITableViewCell {

    static var identifier = "AnswerCell"
    var answer: Answer? {
        didSet {
            answerText.text = answer?.text
        }
    }
    
   
    
    let view = UIView()
    
    let answerText = GDLabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        view.checkIfAutoLayout()
        addSubview(view)
        view.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        view.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        
        addSubview(answerText)
        answerText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        answerText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0 ).isActive = true
        answerText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        answerText.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
      //  answerText.backgroundColor = UIColor.non
        answerText.textColor = .grayOne
        
        answerText.textAlignment = .center
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
