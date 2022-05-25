//
//  ArithmeticOperationNavView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import Foundation
import SwiftUI

// 이 친구의 목적은 +,-,*,/를 입력받으면
// 해당 뷰를 넘겨주는 역할을 합니다.
// 더하기와 빼기는 1+1 ,2+1,2+2 자릿수의 연산과
// 곱하기 나누기는 1*1 즉 구구단만 값을 넘겨줄 것 입니다.
// 애들이 쓰는데 @@*@@는 도망갈거 같아요.



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


enum ArithmeticOperationNavVeiw {
    case poAo
    case poAt
    case ptAt
    
    case moAo
    case moAt
    case mtAt
    
    case multiply
    case divide
    
    var boxString : String {
        switch self{
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
    var gameView: some View{
        switch self{
        case.poAo :
            GameView(gameType: .constant(.poAo))
        case.poAt :
            GameView(gameType: .constant(.poAt))
        case.ptAt :
            GameView(gameType: .constant(.ptAt))
            
        case.moAo:
            GameView(gameType: .constant(.moAo))
        case.moAt:
            GameView(gameType: .constant(.moAt))
        case.mtAt:
            GameView(gameType: .constant(.mtAt))
            
        case.multiply :
            GameView(gameType: .constant(.multiply))
            
        case.divide :
            GameView(gameType: .constant(.divide))
        }
    }
    // 뷰를 하나만 만들고 여기에 값을 넣어서 던지면 되는거 아닐까?
    // 굳이 뷰를 3개나 만들어야하나? 다 똑같은 뷰인데
    // 사용하기 배열  전에 카운트 돌려서 뷰 제한 걸면 될 듯
    // 뷰를 어레이로 못 던져서 다른 방법을 생각하다가
    // 뷰안에 값을 던져서 그 값에 따라 뷰가 다르게 그려지게 하려고했는데
    // 그 값 전달 하는 방법을 어캐 해야 할지 몰라서 결국...
    // 끔찍한 코드가 되었다..
    
    @ViewBuilder
    var exView: some View{
        switch self{
        case.poAo :
            ExView(exType: .constant(.poAo)).navigationBarTitle("? + ? = ?")
        case.poAt :
            ExView(exType: .constant(.poAt)).navigationBarTitle("? + ?? = ?")
        case.ptAt :
            ExView(exType: .constant(.ptAt)).navigationBarTitle("?? + ? = ?")
            
        case.moAo:
            ExView(exType: .constant(.moAo)).navigationBarTitle("? - ? = ?")
        case.moAt:
            ExView(exType: .constant(.moAt)).navigationBarTitle("?? - ? = ?")
        case.mtAt:
            ExView(exType: .constant(.mtAt)).navigationBarTitle("?? - ?? = ?")
            
        case.multiply :
            ExView(exType: .constant(.multiply)).navigationBarTitle("? × ? = ?")
            
        case.divide :
            ExView(exType: .constant(.divide)).navigationBarTitle("? ÷ ? = ?")
        }
    }
    
}


struct ArithmeticOperationNavVeiwModifier: ViewModifier {
    var viewName : ArithmeticOperationNavVeiw
    
    var viewWidth : CGFloat = 280
    var viewHidth : CGFloat = 280 / 3
    var fontSize  : CGFloat = 18
    
    func body(content: Content) -> some View {
        //        NavigationLink(destination: navViewName.view){
        //            Image(systemName: navViewName.symbolName)
        //                .font(.system(size: 90, weight: .light))
        //                .foregroundColor(Color(hex:"#"))
        //                .frame(width: 100, height:100, alignment: .center)
        //                .background(Color(hex: "#FFA2C4"))
        //                .cornerRadius(20)
        //        }
        VStack(spacing: 0) {
            //스택은 자체적으로 패딩 처럼 보이는 값을 가지고 있습니다.
            //하지만 때로는 우리는 한개의 도형? 처럼 보이는 뷰가 필요하죠
            //그럴때는 spacing :0 을 주면 딱 붙습니다.
            
            Text("\(viewName.boxString)")
                .font(.system(size: 60, weight: .light))
                .foregroundColor(Color(hex:"#"))
                .frame(width: viewWidth, height:viewHidth, alignment: .center)
                .background(Color(hex: "#86C99A"))
            
            HStack(spacing: 0){
                
                NavigationLink(destination: viewName.gameView){ //GameView
                    Text("연습모드")
                        .font(.system(size: fontSize, weight: .light))
                        .foregroundColor(Color(hex:"#"))
                        .frame(width: viewWidth/3, height:viewHidth*0.6, alignment: .center)
                        .background(Color(hex: "#F1C3B7"))
                }
                
                NavigationLink(destination: viewName.gameView){//TestView
                    Text("도전모드")
                        .font(.system(size: fontSize, weight: .light))
                        .foregroundColor(Color(hex:"#"))
                        .frame(width: viewWidth/3, height:viewHidth*0.6, alignment: .center)
                        .background(Color(hex: "#F0DD5E"))
                }
                
                
                NavigationLink(destination: viewName.exView){//TestView
                    Text("설명")
                        .font(.system(size: fontSize, weight: .light))
                        .foregroundColor(Color(hex:"#"))
                        .frame(width: viewWidth/3, height:viewHidth*0.6, alignment: .center)
                        .background(Color(hex: "#A7E1EF"))
                }
                
            }
        }
        
    }
    
}



//MARK: 리팩토링
// 리팩토링 할때...
// 변수값 두개만 받아서 한다.
// 옵져버블
// 인바이런먼트 (환경변수)

