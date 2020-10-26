//
//  CardPromoItemView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 21/10/20.
//

import SwiftUI

struct CardPromoItemView: View {
  var body: some View {
    VStack {
      Image("card_1")
        .resizable()
        .aspectRatio(2, contentMode: .fit)
        .cornerRadius(5.0)
    }
  }
}

#if DEBUG
struct CardPromoItemView_Previews: PreviewProvider {
  static var previews: some View {
    CardPromoItemView()
  }
}
#endif
