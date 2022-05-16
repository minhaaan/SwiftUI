//
//  ContentView.swift
//  MyLoadingSkeletonView
//
//  Created by 최민한 on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Image(systemName: "flame.fill")
                .font(.largeTitle)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .clipShape(Circle())
                .modifier(SkeletonAnimationModifier())
            
            Text("오늘도 빡코딩!")
                .font(.title2)
                .modifier(SkeletonAnimationModifier())
            
            Text("최미난")
                .font(.subheadline)
            
            Text("(서울=연합뉴스) 최선영 기자 = 북한에서 신종 코로나바이러스 감염증(코로나19) 확진자와 유증상자가 가장 많은 지역은 평양으로 나타났다.코로나19 변이인 스텔스 오미크론'(BA.2)의 확산 출발점이 사실상 지난달 체제 결속을 위해 무리하게 벌여놓았던 열병식 등 대형 정치행사였음이 재확인된 셈이다.북한 국가비상방역사령부 관계자인 류영철은 16일 조선중앙TV에 출연해 14일 오후 6시 현재 각 지역의 코로나19 확진자와 유증상자 현황을 상세히 소개했다.(서울=연합뉴스) 최선영 기자 = 북한에서 신종 코로나바이러스 감염증(코로나19) 확진자와 유증상자가 가장 많은 지역은 평양으로 나타났다.코로나19 변이인 스텔스 오미크론'(BA.2)의 확산 출발점이 사실상 지난달 체제 결속을 위해 무리하게 벌여놓았던 열병식 등 대형 정치행사였음이 재확인된 셈이다.북한 국가비상방역사령부 관계자인 류영철은 16일 조선중앙TV에 출연해 14일 오후 6시 현재 각 지역의 코로나19 확진자와 유증상자 현황을 상세히 소개했다.")
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "repeat")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 80, height: 60)
                    .background(.blue)
                    .cornerRadius(15)
            }
            
            Spacer()

            
        }
        .padding(.horizontal, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
