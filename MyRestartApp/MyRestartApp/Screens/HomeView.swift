//
//  HomeView.swift
//  MyRestartApp
//
//  Created by 최민한 on 2022/05/22.
//

import SwiftUI

struct HomeView: View {
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  var body: some View {
    
    VStack(spacing: 20) {
      
      Spacer()
      
      // MARK: Image
      ZStack {
        CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
        Image("character-2")
          .resizable()
          .scaledToFit()
      }
      
      Text("dlwlrma dlwlrma dlwlrma dlwlrma dlwlrma dlwlrma dlwlrma dlwlrma ")
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 40)
      
      Spacer()
      
      Button {
        isOnboardingViewActive = true
      } label: {
        ZStack {
          Capsule()
            .frame(width: 110, height: 50, alignment: .center)
          HStack {
            Image(systemName: "flame.fill")
              .foregroundColor(.white)
            Text("Restart")
              .font(.body)
              .fontWeight(.bold)
              .foregroundColor(.white)
          }
        }
      }
      
    }
    
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
