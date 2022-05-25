//
//  Plus1and1GameView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import SwiftUI

struct GameView: View {
    @Binding var gameType : MainType
    var gvClass = MainClass()
    
    
    var body: some View {
        
        Color(hex:"#F6EFEA")
            .ignoresSafeArea()
            .overlay(
                VStack{
                    Text("연습모드입니다.")
                    Text("\(gvClass.titleString(ex: gameType))")
                }//VStack
            )//overlay
    }//View
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameType: .constant(.poAo))
    }
}
