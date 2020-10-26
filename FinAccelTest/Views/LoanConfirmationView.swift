//
//  LoanConfirmationView.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 22/10/20.
//

import SwiftUI

struct LoanConfirmationView: View {
  
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  @State private var pin: String = ""
  @State private var hidden: Bool = true
  @State private var showModal: Bool = false
  @State private var errorMessage: String = ""
  var totalPay: String
  var mobileNumber: String
  
  var body: some View {
    ScrollView {
      VStack {
        HStack {
          Image("logo_indosat")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
          
          Text(mobileNumber)
            .padding(.leading)
          
          Spacer()
        }
        .padding([.horizontal, .top])
        
        Divider()
        
        Text("OTP is not needed for first transaction of the day that is less than Rp 200,000")
          .font(.caption)
          .padding()
          .background(Color("yellow"))
          .cornerRadius(5)
          .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
          .padding([.horizontal, .top], 13)
          .padding(.bottom, 8)
        
        CardPaymentDetailView(nominal: totalPay)
        
        CardInputPin(pin: $pin, hidden: $hidden, errorMessage: $errorMessage)
        
      }
    }
    .overlay(buttonPay, alignment: .bottom)
    .fullScreenCover(isPresented: $showModal) {
      NavigationView {
        PaymentDetailView(totalPay: self.totalPay, mobileNumber: self.mobileNumber)
      }
    }
    .navigationBarTitle(Text("Loan Confirmation"), displayMode: .inline)
    .navigationBarBackButtonHidden(true)
    .navigationBarItems(leading: Button(action : {
      self.mode.wrappedValue.dismiss()
    }){
      Image(systemName: "chevron.left")
    })
  }
}

extension LoanConfirmationView {
  func validatePin(pin: String) -> Bool {
    if pin.isEmpty {
      return true
    }
    
    return false
  }
}

extension LoanConfirmationView {
  var buttonPay: some View {
    VStack {
      Text("PAY")
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .onTapGesture {
          if validatePin(pin: pin) {
            errorMessage = "Please enter your PIN!"
          } else {
            self.showModal.toggle()
          }
        }
    }
    .frame(maxWidth: .infinity)
    .frame(height: 50)
    .background(Color("orange"))
  }
}

#if DEBUG
struct LoanConfirmationView_Previews: PreviewProvider {
  static var previews: some View {
    LoanConfirmationView(totalPay: "", mobileNumber: "")
  }
}
#endif
