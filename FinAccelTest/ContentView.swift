//
//  ContentView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 21/10/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      TopTabBarView()
    }
    .navigationBarColor(backgroundColor: UIColor(named: "blue")!, tintColor: .white)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
