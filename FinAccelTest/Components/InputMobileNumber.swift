//
//  InputMobileNumber.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 23/10/20.
//

import SwiftUI

struct InputMobileNumber: View {
  @Binding var mobileNumber: String
  
  var body: some View {
    HStack {
      Image("logo_indosat")
        .resizable()
        .scaledToFit()
        .frame(width: 30, height: 30)
        .padding(.all, 6)
        .overlay(Circle().stroke(Color.blue))
      
      Spacer()
      
      VStack(alignment: .leading, spacing: 8) {
        Text("Mobile number")
        
        TextField("", text: $mobileNumber)
          .modifier(ClearButton(text: $mobileNumber))
          .keyboardType(.numberPad)
        
        Divider()
      }
      
      Spacer()
      
      Image(systemName: "rectangle.stack.person.crop.fill")
    }
  }
}

#if DEBUG
struct InputMobileNumber_Previews: PreviewProvider {
  static var previews: some View {
    InputMobileNumber(mobileNumber: .constant("6285777282844"))
  }
}
#endif
