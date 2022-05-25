//
//  Plus1and1GameView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import SwiftUI

struct GameView: View {
    @Binding var gameType : MainType
    @State var userNum : String = ""
    var gvClass = MainClass()
    
    
    var body: some View {
        
        Color(hex:"#F6EFEA")
            .ignoresSafeArea()
            .overlay(
                VStack{
                    Text("연습모드입니다.")
                    Text("\(gvClass.titleString(ex: gameType))")
            // 미래의 나에게 보내는 편지
                    // 이거 넘버패드로 하려면 Done버튼 커스텀 해야하는데 극혐이니까
                    // 그냥 9개 보기중에 고르는걸로 하자
                    // 그게 더 어려울 수도 ㅋㅋ

                }//VStack
            )//overlay
    }//View
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameType: .constant(.poAo))
    }
}
