//
//  CustomDivider.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 23/10/20.
//

import SwiftUI

extension Divider: Shape {
  public func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: 0, y: 0))
    path.addLine(to: CGPoint(x: rect.width, y: 0))
    return path
  }
}
