//
//  EyeButton.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 23/10/20.
//

import SwiftUI

struct EyeButton: ViewModifier {
  @Binding var hidden: Bool
  
  public func body(content: Content) -> some View {
    ZStack(alignment: .trailing) {
      content
      
      Button(action: { self.hidden.toggle() }) {
        Image(systemName: self.hidden ? "eye.slash" : "eye")
          .foregroundColor(Color(UIColor.opaqueSeparator))
      }
      .padding(.trailing, 8)
    }
  }
}
