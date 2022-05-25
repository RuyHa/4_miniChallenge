//
//  Plus1and1ExView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/03.
//

import SwiftUI

struct ExView: View {
    @Binding var exType : MainType
    var exClass = MainClass()
    
    var body: some View {
        Text("\(exClass.exString(ex: exType))")
    }
}


struct ExView_Previews: PreviewProvider {
    static var previews: some View {
        ExView(exType: .constant(.ptAt))

    }
}
