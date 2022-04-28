//
//  Plus1and1GameView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import SwiftUI

struct GameView: View {
    @Binding var gameType : GameType
   
    
    var body: some View {
        Text("\(gameType.titleString)")
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameType: .constant(.poAo))
    }
}
