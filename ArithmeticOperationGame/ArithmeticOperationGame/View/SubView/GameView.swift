//
//  Plus1and1GameView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import SwiftUI

struct GameView: View {
    @Binding var gameType : MainType
    var ppap = MainClass()

    
    var body: some View {
        Text("\(ppap.exTitleString(ex: gameType))")
//        Text("test")
        //여기에 클래스로 선언한 값으 끌고오자
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameType: .constant(.poAo))
    }
}
