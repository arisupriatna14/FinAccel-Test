//
//  TopupItemView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 21/10/20.
//

import SwiftUI

struct TopupItemView: View {
  var nominal: String
  
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 4) {
        Text("Nominal :")
          .font(.caption)
          .foregroundColor(.black)
        
        Text("\(nominal)")
          .foregroundColor(.black)
      }
      
      Spacer()
      
      Text("Rp \(nominal)")
        .font(.system(size: 14))
        .foregroundColor(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .frame(width: 110, height: 40)
        .background(Color("blue"))
        .cornerRadius(5.0)
    }
  }
}

#if DEBUG
struct TopupItemView_Previews: PreviewProvider {
  static var previews: some View {
    TopupItemView(nominal: "100.000")
      .padding()
  }
}
#endif
