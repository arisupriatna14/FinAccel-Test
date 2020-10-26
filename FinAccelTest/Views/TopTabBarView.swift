//
//  TopTabBarView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 22/10/20.
//

import SwiftUI

struct TopTabBarView: View {
  @State private var selected = 0
  
  var body: some View {
    VStack {
      HStack {
        VStack {
          Text("Pulsa")
            .fontWeight(.medium)
            .foregroundColor(selected == 0 ? Color.orange : Color.gray.opacity(0.5))
          
          Color.orange.opacity(selected == 0 ? 1 : 0)
            .frame(height: 3)
        }
        .tag(0)
        .onTapGesture {
          self.selected = 0
        }
        
        Spacer()
        
        VStack {
          Text("Data Package")
            .fontWeight(.medium)
            .foregroundColor(selected == 1 ? Color.orange : Color.gray.opacity(0.5))
          
          Color.orange.opacity(selected == 1 ? 1 : 0)
            .frame(height: 3)
        }
        .tag(1)
        .onTapGesture {
          self.selected = 1
        }
      }
      .padding(.top)
      
      TabView(selection: $selected) {
        TopupView()
          .tag(0)
        
        TopupView()
          .tag(1)
      }
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
      .edgesIgnoringSafeArea(.top)
    }
  }
}

#if DEBUG
struct TopTabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TopTabBarView()
  }
}
#endif
