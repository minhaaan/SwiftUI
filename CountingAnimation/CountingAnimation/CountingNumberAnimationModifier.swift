//
//  CountingNumberAnimationModifier.swift
//  CountingAnimation
//
//  Created by 최민한 on 2022/05/17.
//

import SwiftUI

struct CountingNumberAnimationModifier: AnimatableModifier {
    
    var number: CGFloat = 0
    
    var animatableData: CGFloat {
        get { number }
        set { number = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(NumberLabelView(number: number))
    }
    
    // 숫자 라벨 뷰
    struct NumberLabelView: View {
        let number: CGFloat
        
        var body: some View {
            Text("\(Int(number))")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
        
    }
    
    
}



