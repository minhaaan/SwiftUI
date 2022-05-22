//
//  OnboardingView.swift
//  MyRestartApp
//
//  Created by 최민한 on 2022/05/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
          Color.accentColor
          
          VStack(spacing: 20) {
            // MARK: Header
            
            Spacer()
            
            VStack {
              Text("Share.")
                .font(.system(size: 60))
                .fontWeight(.bold)
                .foregroundColor(.white)
              Text("dlwlrma dlwlrma dlwlrma dlwlrma\ndlwlrma dlwlrma dlwlrma.")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.system(size:20))
            }.padding(.top, 50)
            
            // MARK: Center
            
            ZStack {
              ZStack {
                CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                Image("character-1")
                  .resizable()
                  .scaledToFit()
              } // ZStack
              
            }
            
            Spacer()
            
            // MARK: Footer
            
            ZStack {
              
              // 1. Background
              Capsule()
                .fill(Color.white.opacity(0.2))
              
              Capsule()
                .fill(Color.white.opacity(0.2))
                .padding(8)
              
              // 2. call-to-action
              
              Text("Get Started")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .offset(x: 20)
              
              // 3.capsule
              
              HStack {
                Capsule()
                  .fill(Color("ColorRed"))
                  .frame(width: 80)
                
                Spacer()
              }
              
              // 4. circle
              
              HStack {
                ZStack {
                  Circle()
                    .fill(Color("ColorRed"))
                  Circle()
                    .fill(Color.black.opacity(0.15))
                    .padding(8)
                  Image(systemName: "chevron.right.2")
                    .font(.system(size: 24, weight: .bold))
                }
                .foregroundColor(.white)
                .frame(width: 80, height: 80, alignment: .center)
                .onTapGesture {
                  isOnboardingViewActive = false
                }
                
                Spacer()
              } // HSTACK
              
            } // FOOTER
            .frame(height: 80, alignment: .center)
            .padding()
            
          } // VSTACK
          
        } // ZSTACK
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
