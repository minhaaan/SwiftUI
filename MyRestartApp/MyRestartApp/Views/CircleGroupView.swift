//
//  CircleGroupView.swift
//  MyRestartApp
//
//  Created by 최민한 on 2022/05/22.
//

import SwiftUI

struct CircleGroupView: View {
  
  @State var ShapeColor: Color
  @State var ShapeOpacity: Double
  
  var body: some View {
      ZStack {
        Circle()
          .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
          .frame(width: 260, height: 260, alignment: .center)
        Circle()
          .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
          .frame(width: 260, height: 260, alignment: .center)
      } // ZStack
      
  }
}

struct CircleGroupView_Previews: PreviewProvider {
  static var previews: some View {
    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
  }
}
