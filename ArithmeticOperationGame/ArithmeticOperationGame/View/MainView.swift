//
//  MainView.swift
//  ArithmeticOperationGame
//
//  Created by Ruyha on 2022/04/28.
//
//  이 View는 앱의 시작화면에 해당하는 뷰 입니다.
//  런치 스크린 이후 가장 먼저 나타나는 뷰입니다.

import SwiftUI

struct MainView: View {
    
    let mainNavBtnColumns: [GridItem] = [
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil)
    ]//LazyVGrid를 사용하기 위한 컬럼이다.
    // 가로 한 줄의 배치를 어떻게 할지 정해 놓으면 한줄씩 그려주는 역할 같다.
    
    
    var body: some View {
        
        NavigationView{
            //아래의 코드에는 NavLink가 안 보이지만 LazyVGrid안에 있는 친구가 NavigationLink로 만들어져있다.
            Color(hex:"#F6EFEA")
            //(hex:)는 Color을 extension(확장)해서 사용하고있습니다.
            //Extensoin폴더안에Extension.Swfit에서 확인 가능합니다.
                .ignoresSafeArea()
            //배경화면과 안전역역을 무시하는 코드이다.
                .overlay(
                    //오버레이는 추후 수정할 수도 있다.
                    //ZStack말고 다른 방법을 사용해 보려고 넣었다.
                    VStack{
                        Text("Math Quiz")
                            .font(.system(size: 64, weight: .ultraLight))
                        //간단한 Text이다. 앱의 이름을 표현해 주고 있다.
                        
                        
                        LazyVGrid(columns: mainNavBtnColumns) {
                            ForEach(MainNavView.allCases, id: \.self) { index in
                                mainNavViewStyle(navViewName: index)
                            }//ForEach
                        }//LazyVGrid
                        .padding(.bottom,50)
                        //하단의 주석참고 1
                        
                        
                        NavigationLink(destination: TestView1()){
                            Text("앱 설명")
                                .font(.system(size: 40, weight: .light))
                                .foregroundColor(Color(hex:"#"))
                                .frame(width: 210, height:60, alignment: .center)
                                .background(Color(hex: "#80DEA4"))
                                .cornerRadius(10)
                        } .padding(.bottom,10)
                        // 위의 Grid가 어렵다면 이렇게 코딩해도 가능합니다.
                        // 다만 아래에 있는 뷰와 대부분 같은 코드로 구성되어 있고
                        // 이런 코드가 100개가 있다면 디자인이 조금 수정 되었을때
                        // 우리는 100곳의 코드를 모두 찾아 다니는 고생을 해야 합니다.
                        
                        NavigationLink(destination: TestView1()){
                            Text("Challenge")
                                .font(.system(size: 40, weight: .light))
                                .foregroundColor(Color(hex:"#"))
                                .frame(width: 210, height:60, alignment: .center)
                                .background(Color(hex: "#A2DDFB"))
                                .cornerRadius(10)
                        }
                        // MARK: 앱 설명과 첼린지 기능은 다른 것이 구현된 다음에 쓴다.
                        
                    }//VStack)
                        .navigationBarHidden(true)
                ) }//NavigationView
    }//body
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


/* MARK: 하단주석
 1.그냥 심플하게 NavigationLink를 4번 사용해서 뷰를 그릴 수도 있었지만
 그건 좋은 코드가 아닌것 같아서 나름 시간을 투자해 작성한 코드이다.
 먼저 LazyVGrid는 UIKit에서 컬렉션뷰 와 같은 느낌이다.
 한 줄(가로)을 GridItem이 들어 있는 배열로 만들어 주면
 사용자가 정한 갯수 만큼 반복적으로 화면을 그려준다.
 예를 들어 내가
 let mainNavBtnColumns: [GridItem] = [
 GridItem(.fixed(100), spacing: nil, alignment: nil),
 GridItem(.fixed(100), spacing: nil, alignment: nil)
 ]
 의 뜻은 한줄에 2개의 아이템이 들어간다는 의미이다.
 내가 ForEach문으로 4개를 그리면 2줄 8개를 그리면 4줄이 그려진다.
 자세한건 직접 검색을 하는 것을 추천한다.
 
 mainNavViewStyle(navViewName: index)
 이부분이 정말 설명이 어려운데 나도 완벽하게 아직 이해를 못 했고 조금더 좋은 방법이 있을 것 같다.
 Jump to Definition 기능을 사용해 추척해보자
 간단하게 설명하면 NavigationLink를 Assets처럼 만들어 사용했다.
 거기에 내가 정한 enum값 안에서만 선택 가능하게 만들었다.
 */

/* 퀘스트 목록
 ZStack 없이 컬러 => 클리어
 리스트랑 그리드 => 그리드로 클리어
 부모와 자식을 왜 분리시키야 하는지 => 이건좀 걸릴듯하 ㅁ
 뷰의 스타일이 아닌 네비게이션뷰의 스타일로 잡으면안되는지? => 이렇게 한건 아니지만 해결함
 
 */
