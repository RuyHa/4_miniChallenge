//
//  Extension.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/04/28.
//
//  Extension은 확장을 의미 합니다.
//  기존에 Swift가 지원하는 기능을 확장시켜서 커스텀 하는 느낌으로 사용합니다.


import Foundation
import SwiftUI


//MARK: Color Extension
//코드 출처 : 서근블로그
//extension Color은 기존 Swift에서 사용하는 Color이라는 것을 확장해서 사용한다는 것 입니다.
//아래의 코드는 저도 주워온것이라 정확히 설며이 어렵습니다. ㅠㅠ
extension Color{
    init(hex:String){
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red:r , green: g , blue: b)
    }
}


//MARK: View Extension
//코드에 도움이 된 키워드 및 주소
//https://github.com/unnnyong/AppStore/pull/1/files
//SwiftUI View Modifier
//위의 Color의 설명과 비슷합니다. 기존에 사용하고 있는 View를 확장해서 사용합니다.
//저의 경우 Main NavigationView(정확히는 NavigationLink를 재활용하고 싶었기에
//mainNavViewStyle라는 함수를 만들어 사용했습니다.
//MainNavView는 enum입니다.
extension View{
    func mainNavViewStyle(navViewName: MainNavView) ->some View {
        modifier(CustomNavigationViewModifier(navViewName: navViewName))
        //이부분은 정확히 설명이 어려우나 modirier이 수식어라는 뜻이 있다고 합니다.
    }
    
    func ArithmeticOperationNavViewStyle(viewName: ArithmeticOperationNavVeiw) ->some View {
        modifier(ArithmeticOperationNavVeiwModifier(viewName: viewName))
        //이부분은 정확히 설명이 어려우나 modirier이 수식어라는 뜻이 있다고 합니다.
    }
    
}
