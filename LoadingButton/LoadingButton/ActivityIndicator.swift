//
//  ActivityIndicator.swift
//  LoadingButton
//
//  Created by 최민한 on 2022/05/15.
//

import SwiftUI

struct ActivityIndicator: View {
    
    @State var currentDegrees = 0.0
    
    let purpleGradient = LinearGradient(
        gradient: Gradient(
            colors: [
                .purple,
                .purple.opacity(0.75),
                .purple.opacity(0.5),
                .purple.opacity(0.2),
                .clear
            ]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.85)
            .stroke(purpleGradient, style: StrokeStyle(lineWidth: 5, lineCap: CGLineCap.round))
            .frame(width: 40, height: 40, alignment: .center)
            .rotationEffect(Angle.degrees(currentDegrees))
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { _ in
                    withAnimation {
                        self.currentDegrees += 10
                    }
                }
            }
    }
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator()
    }
}
