//
//  ArithmeticOperationViewClass.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/25.
//

import Foundation
import SwiftUI


//이 앱에서 귀찮은 반복을 줄여주는 가장 중요한 이넘
//만들다 보니 만들어졌는데 만든나도 정확한 사용법을 모르는게 함정카드
//디자인패턴을 적용해야 정확한 위치를 잡아 줄 수 있을 것 같은데
//디자인패턴을 안쓰다보니 마땅한 위치도 못줌
enum MainType{
    //Plus One And One
    //과 같은 의미
    case poAo
    case poAt
    case ptAt
    
    case moAo
    case moAt
    case mtAt
    
    case multiply
    
    case divide
}



class ArithmeticOperationViewClass{
    func boxString(type: MainType) -> String{
        switch type{
        case.poAo:
            return "? + ? = ?"
        case.poAt:
            return "?? + ? = ?"
        case.ptAt:
            return "?? + ?? = ?"
            
        case.moAo:
            return "? - ? = ?"
        case.moAt:
            return "?? - ? = ?"
        case.mtAt:
            return "?? - ?? = ?"
            
        case.multiply:
            return "? × ? = ?"
            
        case.divide:
            return "? ÷ ? = ?"
        }
    }
    
    @ViewBuilder
    func gameView(type:MainType) -> some View{
        switch type{
        case.poAo :
            GameView(gameType: .constant(.poAo)).navigationBarTitle("\(boxString(type:type))")
        case.poAt :
            GameView(gameType: .constant(.poAt)).navigationBarTitle("\(boxString(type:type))")
        case.ptAt :
            GameView(gameType: .constant(.ptAt)).navigationBarTitle("\(boxString(type:type))")
            
        case.moAo:
            GameView(gameType: .constant(.moAo)).navigationBarTitle("\(boxString(type:type))")
        case.moAt:
            GameView(gameType: .constant(.moAt)).navigationBarTitle("\(boxString(type:type))")
        case.mtAt:
            GameView(gameType: .constant(.mtAt)).navigationBarTitle("\(boxString(type:type))")
            
        case.multiply :
            GameView(gameType: .constant(.multiply)).navigationBarTitle("\(boxString(type:type))")
            
        case.divide :
            GameView(gameType: .constant(.divide)).navigationBarTitle("\(boxString(type:type))")
        }
    }

    @ViewBuilder
    func exView(type:MainType) -> some View{
        switch type{
        case.poAo :
            ExView(exType: .constant(.poAo)).navigationBarTitle("\(boxString(type:type))")
        case.poAt :
            ExView(exType: .constant(.poAt)).navigationBarTitle("\(boxString(type:type))")
        case.ptAt :
            ExView(exType: .constant(.ptAt)).navigationBarTitle("\(boxString(type:type))")
            
        case.moAo:
            ExView(exType: .constant(.moAo)).navigationBarTitle("\(boxString(type:type))")
        case.moAt:
            ExView(exType: .constant(.moAt)).navigationBarTitle("\(boxString(type:type))")
        case.mtAt:
            ExView(exType: .constant(.mtAt)).navigationBarTitle("\(boxString(type:type))")
            
        case.multiply :
            ExView(exType: .constant(.multiply)).navigationBarTitle("\(boxString(type:type))")
            
        case.divide :
            ExView(exType: .constant(.divide)).navigationBarTitle("\(boxString(type:type))")
        }
    }
    
    @ViewBuilder
    func testView(type:MainType) -> some View{
        switch type{
        case.poAo :
            TestView(testType: .constant(.poAo)).navigationBarTitle("\(boxString(type:type))")
        case.poAt :
            TestView(testType: .constant(.poAt)).navigationBarTitle("\(boxString(type:type))")
        case.ptAt :
            TestView(testType: .constant(.ptAt)).navigationBarTitle("\(boxString(type:type))")
            
        case.moAo:
            TestView(testType: .constant(.moAo)).navigationBarTitle("\(boxString(type:type))")
        case.moAt:
            TestView(testType: .constant(.moAt)).navigationBarTitle("\(boxString(type:type))")
        case.mtAt:
            TestView(testType: .constant(.mtAt)).navigationBarTitle("\(boxString(type:type))")
            
        case.multiply :
            TestView(testType: .constant(.multiply)).navigationBarTitle("\(boxString(type:type))")
            
        case.divide :
            TestView(testType: .constant(.divide)).navigationBarTitle("\(boxString(type:type))")
        }
    }
    
}
