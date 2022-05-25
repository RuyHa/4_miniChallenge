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




struct ArithmeticOperationNavVeiwModifier: ViewModifier {
    var type : MainType
    var aovc = ArithmeticOperationViewClass()
    
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
            
            Text("\(aovc.boxString(type: type))")
                .font(.system(size: 60, weight: .light))
                .foregroundColor(Color(hex:"#"))
                .frame(width: viewWidth, height:viewHidth, alignment: .center)
                .background(Color(hex: "#86C99A"))
            
            HStack(spacing: 0){
                
                NavigationLink(destination: aovc.gameView(type: type)){ //GameView
                    Text("연습모드")
                        .font(.system(size: fontSize, weight: .light))
                        .foregroundColor(Color(hex:"#"))
                        .frame(width: viewWidth/3, height:viewHidth*0.6, alignment: .center)
                        .background(Color(hex: "#F1C3B7"))
                }
                
                NavigationLink(destination: aovc.testView(type: type)){//TestView
                    Text("도전모드")
                        .font(.system(size: fontSize, weight: .light))
                        .foregroundColor(Color(hex:"#"))
                        .frame(width: viewWidth/3, height:viewHidth*0.6, alignment: .center)
                        .background(Color(hex: "#F0DD5E"))
                }
                
                
                NavigationLink(destination: aovc.exView(type: type)){//TestView
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

