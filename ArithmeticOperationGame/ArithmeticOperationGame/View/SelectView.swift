//
//  PlusGameView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/02.
//

import SwiftUI

struct SelectView: View {
    @Binding var aOenum : [ArithmeticOperationNavVeiw]
    //더하기 빼기 곱하기 나누기의 값중 해당 뷰에 맞는 ArithmeticOperationNavVeiw 열거형의 값을 받아오기 위한 변수
    @Binding var navTitle : String
    //해당 뷰의 네비게이션 타이틀 값
    
    var body: some View {
        
        ZStack(alignment: .top){
            Color(hex:"#F6EFEA")
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                ForEach(aOenum, id: \.self) { index in
                    ArithmeticOperationNavViewStyle(viewName: index)
                        .padding([.bottom,.top],15)
                }
                Spacer()
                Spacer()
                
            }//.background(.red)
            
        }.navigationTitle("\(navTitle)")
            .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView(aOenum: .constant([.poAo,.poAt,.ptAt]), navTitle: .constant("더하기"))
    }
}
