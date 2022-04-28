//
//  MainNav.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/04/28.
//
//  솔직히 파일명과 그룹을 잘 나눴다고 하기는 많이 부족하지만
//  그래도 나름 분류를해서 작성을 하면 추후 코드리뷰를 받게된다면 수정하기에 용이 할 것 같아서
//  일단은 빼두었습니다. 혹시라도 불편하시다면 제가 아직 부족한 것이니 미안합니다.

import Foundation
import SwiftUI

//MARK: Enum MainNavView
/*
 enum은 열거형입니다.
 아직은 정확히 문법도 모르고 왜 써야하는도 명확한 설명이 어렵지만
 그래도 지금까지 코딩을 하면서 느낀것을 토대로 설명을 적자면
 특정한값을 조금더 안전하게 처리하기 위함인 것 같습니다.
 예를 들어 제가 MainNavView를 열거형으로 만들지 않고 if else나 switch Case로 만든다면
 plus를 puls로 입력했을때 해당 케이스가 없기에 원하지 않는 에러가 발생할 것 입니다.
 하지만 열거형을 사용한다면 .plus와 같은 형태로 고를 수 밖에 없기에 에러를 줄일 수 있습니다.
 TMI를 조금 더 적자면 팩토리패턴을 이용한 DeepLink 작업을 할 때 사용했던것 같습니다./
 
 CaseIterable
 CaseIterable는 열거형을 배열처럼 다룰 수 있게 해주는 프로토콜입니다.
 https://0urtrees.tistory.com/197
 위의 링크에 조금 더 자세한 설명이 나왔이
 멘토 영이 알려주신 키워드 입니다.
 저의 경우 딱히 사용할 필요는 없지만 ForEach문처럼 반복적으로 찍어낼때 배열처럼 순회(?)
 시킬 수 있다고 하여 처음 본 키워드라 추가해 놨습니다.
 지우더라고 정상동작 할 것입니다.
 (제가 수정하지 않았다면...)
 */

enum MainNavView : CaseIterable {
    //case는 해당 enum에서 제가 선택가능하도록 만든 조건들 입니다.
    //예를 들어 롤에서 탑,미드,정글,서폿,원딜만 고를 수 있는 것과 비슷합니다.
    case plus
    case minus
    case multiply
    case divide
    
    //이건 정확히 문법이 어떤것인지 모르겠지만..
    //해당 열거형의 옵션이 선택되면 그 옵션에 맞는 값을 가지게 됩니다.
    //ex) MainNavView.plus.symbolName = "plus"
    var symbolName : String{
        switch self{
        case .plus: return "plus"
        case .minus: return "minus"
        case .multiply: return "multiply"
        case .divide: return "divide"
        }
    }

    
    // enum : associated type
    //솔직히 뭔소린지 모르겠다.
    //https://developer.apple.com/documentation/swiftui/viewbuilder
    //더 많이 공부해야 될 것 같다.
    //설명은 위의 symbolName과 비슷합니다.
    @ViewBuilder
    var view: some View{
        switch self{
        case .plus: SelectView(aOenum: .constant([.poAo,.poAt,.ptAt]), navTitle: .constant("더하기"))
        case .minus: SelectView(aOenum: .constant([.moAo,.moAt,.mtAt]), navTitle: .constant("빼기"))
        case .multiply: SelectView(aOenum: .constant([.multiply]),  navTitle: .constant("곱하기"))
        case .divide: SelectView(aOenum: .constant([.divide]), navTitle: .constant("나누기"))
        }
    }
    
    //이거 뷰 4개를 넣는게 아니라 1개만 넣어서 인자로 받아서 하면 안됨?
    
    
}


//MARK: CustomNavgationVeiwModifier
/*
 솔직히 뭐라고 설명을 적어야 하는지 잘 모르겠습니다.
 문법은 설명하기어렵고 그냥
 MainNavView(열거형) 값을 받아서
 안에 있는 값을 사용하려고 썻습니다.
 살려주세요.
 만든이유: 버튼처럼 에셋으로 빼놓고 재사용하려고함
 -> NavigationLink(destination: 여기) 에 view를 넣어야하는데
 -> UIkit 과는 다르게 view가 프로토콜이라 못받아옴
 -> 나는 멍청해서 프로토콜과 클래스의 차이점을 상속과 채택이다 라는 것 밖에 모름
 -> 검색했더니 아무튼 이렇게 쓰라고함
 -> 짜잔 아무튼 완성
 요약 : 에셋으로 빼려고 했는데 아무튼 안된다고 해서 고생함
 */
struct CustomNavigationViewModifier: ViewModifier {
    var navViewName : MainNavView
    
    func body(content: Content) -> some View {
        NavigationLink(destination: navViewName.view){
            Image(systemName: navViewName.symbolName)
                .font(.system(size: 90, weight: .light))
                .foregroundColor(Color(hex:"#"))
                .frame(width: 100, height:100, alignment: .center)
                .background(Color(hex: "#FFA2C4"))
                .cornerRadius(20)
            
        }
    }
    
}
