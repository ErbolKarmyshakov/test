//
//  Question.swift
//  5
//
//  Created by Mac User on 26/8/23.
//

import Foundation
class Questions{
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    var score: Int = 0
    
    var questions: [Func] = [Func(questions: ["В каком году основали компанию Apple?"], answer: ["1977", "1976", "1999", "2006"], trueAnswer: 1), Func(questions: ["В каком году появился  язык программироваеия Swift? "], answer: ["1345", "1941", "2000", "2014"], trueAnswer: 3),
                             Func(questions: ["На каком месте Москва по размеру в мире?"], answer: ["1", "26", "8", "7"], trueAnswer: 3)]
    
    func game(){
        print("Игра начинается \(name)")
        for (index, question) in questions.enumerated(){
            print("Вопрос \(index + 1): ")
            print(question.questions[0])
            for (i, answer) in question.answer.enumerated(){
                print("\(i + 1). \(answer)")
            }
            print("Введите ответ:")
            if let gameAnswer = readLine(), let userAnswer = Int(gameAnswer){
                if userAnswer - 1 == question.trueAnswer {
                    print("Ответ правильный!")
                    score += 1
                    print("Ваш счет +\(score)")
                }else{
                    print("Ответ неверный! Игра окончена.")
                    print("Ваш счет - 0")
                    return
                }
            }
        }
        print("Вы победили!")
    }
}
