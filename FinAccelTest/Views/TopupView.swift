//
//  TopupView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 21/10/20.
//

import SwiftUI

struct TopupView: View {
  @State var mobileNumber = ""
  let width = UIScreen.main.bounds.width
  
  var body: some View {
    ScrollView {
      InputMobileNumber(mobileNumber: $mobileNumber)
        .padding([.horizontal, .top])
        .padding(.bottom, 8)
      
      divider
      
      if mobileNumber.count >= 4 {
        VStack {
          ForEach(topupData.indices, id: \.self) { index in
            NavigationLink(destination: LoanConfirmationView(totalPay: topupData[index].nominal, mobileNumber: mobileNumber)) {
              TopupItemView(nominal: topupData[index].nominal)
                .padding(.bottom)
            }
          }
        }
        .padding([.horizontal, .top])
        
        divider
      }
      
      VStack(alignment: .leading) {
        Text("Promos")
          .font(.headline)
          .padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(0 ..< 5) { item in
              CardPromoItemView()
                .frame(width: width - (width - (width * 0.8)))
            }
          }
          .padding(.horizontal)
        }
      }
    }
    .navigationBarTitle(Text("Top Up"), displayMode: .inline)
  }
}

extension TopupView {
  var divider: some View {
    Color.gray.opacity(0.2)
      .frame(height: 10)
  }
}

#if DEBUG
struct TopupView_Previews: PreviewProvider {
  static var previews: some View {
    TopupView()
  }
}
#endif
