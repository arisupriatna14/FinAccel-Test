//
//  CardOrderDetailView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 23/10/20.
//

import SwiftUI

struct CardOrderDetailView: View {
  var mobileNumber: String
  
  var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      
      Text("Order Details")
        .fontWeight(.medium)
        .padding([.horizontal, .top])
      
      Divider()
      
      VStack(alignment: .leading, spacing: 16) {
        HStack {
          Image("logo_indosat")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30)
            .padding(.all, 6)
            .overlay(Circle().stroke(Color.blue))
          
          Text(mobileNumber)
            .padding(.leading)
          
          Spacer()
        }
        
        Divider()
        
        HStack {
          Text("Status")
            .font(.system(size: 14))
          
          Spacer()
          
          Text("Success")
            .font(.system(size: 14))
            .foregroundColor(.green)
        }
        
        HStack {
          Text("Order ID")
            .font(.system(size: 14))
          
          Spacer()
          
          Text("KB-8027de03")
            .font(.system(size: 14))
        }
      }
      .padding([.horizontal, .bottom])
      
    }
    .overlay(
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
    )
    .padding([.horizontal, .top])
    .padding(.bottom, 8)
  }
}

#if DEBUG
struct CardOrderDetailView_Previews: PreviewProvider {
  static var previews: some View {
    CardOrderDetailView(mobileNumber: "085272772")
  }
}
#endif
