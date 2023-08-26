//
//  main.swift
//  5
//
//  Created by Mac User on 26/8/23.
//

import Foundation

print("Введите ваше имя!")
if let name = readLine(){
    let play = Questions(name: name)
    play.game()
    
}

