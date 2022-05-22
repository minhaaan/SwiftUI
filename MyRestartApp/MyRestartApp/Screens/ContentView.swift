//
//  ContentView.swift
//  MyRestartApp
//
//  Created by 최민한 on 2022/05/22.
//

import SwiftUI

struct ContentView: View {
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  var body: some View {
    if isOnboardingViewActive {
      OnboardingView()
    } else {
      HomeView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
