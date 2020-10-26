//
//  Topup.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 21/10/20.
//

import Foundation

struct Topup: Identifiable {
  let id = UUID()
  let nominal: String
}

let topupData: [Topup] = [
  Topup(nominal: "25.000"),
  Topup(nominal: "50.000"),
  Topup(nominal: "100.000"),
  Topup(nominal: "150.000"),
  Topup(nominal: "200.000")
]
