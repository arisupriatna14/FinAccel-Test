//
//  CardPaymentDetailView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 23/10/20.
//

import SwiftUI

struct CardPaymentDetailView: View {
  var nominal: String
  
  var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      
      Text("Payment Details")
        .fontWeight(.medium)
        .padding([.horizontal, .top])
      
      Divider()
      
      HStack {
        Text("Paket Data Indosat Freedom Paket M")
          .font(.system(size: 14))
        
        Spacer()
        
        Text("Rp \(nominal)")
          .font(.system(size: 14))
      }
      .padding(.horizontal)
      
      HStack {
        Text("Admin fee")
          .font(.system(size: 14))
        
        Spacer()
        
        Text("Rp 0")
          .font(.system(size: 14))
      }
      .padding(.horizontal)
      
      Divider()
        .stroke(Color.gray.opacity(0.5), style: StrokeStyle(lineWidth: 1, dash: [5]))
        .frame(height: 1)
      
      HStack {
        Text("Pay in 30 days")
          .font(.system(size: 16))
          .fontWeight(.medium)
        
        Spacer()
        
        Text("Rp \(nominal)")
          .font(.system(size: 16))
          .fontWeight(.medium)
          .foregroundColor(.orange)
      }
      .padding([.horizontal, .bottom])
      
    }
    .overlay(
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
    )
    .padding(.horizontal)
    .padding(.vertical, 8)
  }
}

#if DEBUG
struct CardPaymentDetailView_Previews: PreviewProvider {
  static var previews: some View {
    CardPaymentDetailView(nominal: "100.000")
  }
}
#endif
