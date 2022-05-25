//
//  Plus1and1TestView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import SwiftUI

struct TestView: View {
    @Binding var testType : MainType
    var testClass = MainClass()
    
    
    var body: some View {
        Color(hex:"#F6EFEA")
            .ignoresSafeArea()
            .overlay(
                VStack{
                    Text("도전모드입니다.")
                    Text("\(testClass.titleString(ex: testType))")
                }//VStack
            )//overlay
    }//View
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(testType: .constant(.poAo))
        
    }
}
