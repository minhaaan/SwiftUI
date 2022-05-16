//
//  SkeletonAnimationModifier.swift
//  MyLoadingSkeletonView
//
//  Created by 최민한 on 2022/05/17.
//

import SwiftUI

struct SkeletonAnimationModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content.overlay(SkeletonOverlayView())
    }
    
    
    struct SkeletonOverlayView: View {
        
        var body: some View {
            ZStack {}
                .background(.gray.opacity(0.5))
        }
        
    }
}
