//
//  ExClass.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/05/24.
//

import Foundation


class MainClass {
    
    func exTitleString(ex: MainType) -> String{
        switch ex {
        case .poAo:
            return "한자릿수 더하기 한자릿수"
        case .poAt:
            return "두자릿수 더하기 한자릿수"
        case .ptAt:
            return "두자릿수 더하기 두자릿수"
        case .moAo:
            return "한자릿수 빼기 한자릿수"
        case .moAt:
            return "두자릿수 빼기 한자릿수"
        case .mtAt:
            return "한자릿수 빼기 한자릿수"
        case .multiply:
            return "7"
        case .divide:
            return "8"
        }
    }
    
    
    func exString(ex: MainType) -> String{
        switch ex {
        case .poAo:
            return "대충 한자릿수 더하기"
        case .poAt:
            return "2"
        case .ptAt:
            return "3"
        case .moAo:
            return "4"
        case .moAt:
            return "5"
        case .mtAt:
            return "6"
        case .multiply:
            return "7"
        case .divide:
            return "8"
        }
    }
    
    
}
