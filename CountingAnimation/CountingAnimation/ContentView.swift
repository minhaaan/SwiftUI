//
//  ContentView.swift
//  CountingAnimation
//
//  Created by 최민한 on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var number: Int = 0

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(.black)
                .frame(maxWidth: 100, maxHeight: 150)
                .padding()
                .modifier(CountingNumberAnimationModifier(number: CGFloat(number)))
            
            Button {
                refresh()
            } label: {
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(Circle())
            }

        } // VSTACk
    }
}

extension ContentView {
    fileprivate func refresh() {
        self.number = 0
        
        withAnimation(.easeInOut(duration: 2)) {
            if self.number == 0 {
                self.number = 100
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
