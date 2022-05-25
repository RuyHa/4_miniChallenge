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
        Text("\(testClass.titleString(ex: testType))")
//        Text("test")
        //여기에 클래스로 선언한 값으 끌고오자
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(testType: .constant(.poAo))

    }
}
