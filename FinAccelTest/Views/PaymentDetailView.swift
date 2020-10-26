//
//  PaymentDetailView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 22/10/20.
//

import SwiftUI

struct PaymentDetailView: View {
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  var totalPay: String
  var mobileNumber: String
  
  var body: some View {
    ScrollView {
      VStack {
        CardOrderDetailView(mobileNumber: mobileNumber)
        
        CardPaymentDetailView(nominal: totalPay)
        
        infoInvoice
      }
    }
    .overlay(buttonOk, alignment: .bottom)
    .navigationBarTitle(Text("Payment Details"), displayMode: .inline)
    .navigationBarBackButtonHidden(true)
    .navigationBarItems(leading: Button(action : {
      self.mode.wrappedValue.dismiss()
    }){
      Image(systemName: "xmark")
    })
  }
}

extension PaymentDetailView {
  var infoInvoice: some View {
    HStack {
      Text("Invoice has been emailed to you. Have a problem? Email us at ")
        .font(.caption)
        .foregroundColor(.gray) +
      Text("support@kredivo.com")
        .font(.caption)
        .foregroundColor(Color("blue"))
    }
    .padding()
    .background(Color.gray.opacity(0.1))
    .cornerRadius(5)
    .padding([.horizontal, .top], 8)
    .padding(.bottom, 8)
  }
  
  var buttonOk: some View {
    VStack {
      Text("OK")
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .onTapGesture {
          self.mode.wrappedValue.dismiss()
        }
    }
    .frame(maxWidth: .infinity)
    .frame(height: 50)
    .background(Color("orange"))
  }
}

#if DEBUG
struct PaymentDetailView_Previews: PreviewProvider {
  static var previews: some View {
    PaymentDetailView(totalPay: "12.000", mobileNumber: "08572772")
  }
}
#endif
