//
//  SkeletonAnimatableModifier.swift
//  SkeletonLoadingView
//
//  Created by 최민한 on 2022/05/17.
//

import SwiftUI

struct SkeletonAnimatableModifier: AnimatableModifier {
    
    var shouldShow: Bool
    
    var opacity: Double
    
    var animatableData: Double {
        get { opacity }
        set { opacity = newValue }
    }
    
    func body(content: Content) -> some View {
        content.overlay {
            ZStack {
                Color.white.zIndex(0)
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(.gray)
                    .opacity(opacity)
                    .zIndex(1)
            }.opacity(self.shouldShow ? 1 : 0)
        }
    }
    
}

extension View {
    func withSkeletonView(shouldShow:Bool, opacity: Double) -> some View {
        self.modifier(SkeletonAnimatableModifier(shouldShow: shouldShow, opacity: opacity))
        
    }
}

