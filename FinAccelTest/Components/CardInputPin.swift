//
//  CardInputPin.swift
//  FinAccelTest
//
//  Created by Ari Supriatna on 23/10/20.
//

import SwiftUI

struct CardInputPin: View {
  @Binding var pin: String
  @Binding var hidden: Bool
  @Binding var errorMessage: String
  
  var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      
      Text("Kredivo Pin")
        .fontWeight(.medium)
        .padding([.horizontal, .top])
      
      Divider()
      
      VStack(alignment: .leading, spacing: 16) {
        VStack(alignment: .leading) {
          Text("PIN")
            .font(.caption)
            .foregroundColor(.gray)
          
          textFieldPin
          
          Divider()
          
          if !errorMessage.isEmpty {
            Text(errorMessage)
              .font(.caption)
              .foregroundColor(.red)
          }
        }
        
        HStack(spacing: 5) {
          Text("By continuing, I agree with ")
            .font(.footnote)
            .foregroundColor(.gray) +
          
          Text("loan agreement of Kredivo")
            .font(.footnote)
            .foregroundColor(Color("blue"))
        }
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

extension CardInputPin {
  @ViewBuilder
  var textFieldPin: some View {
    if self.hidden {
      SecureField("", text: $pin)
        .modifier(EyeButton(hidden: $hidden))
    } else {
      TextField("", text: $pin)
        .modifier(EyeButton(hidden: $hidden ))
        .keyboardType(.numberPad)
    }
  }
}

#if DEBUG
struct CardInputPin_Previews: PreviewProvider {
  static var previews: some View {
    CardInputPin(pin: .constant("1234"), hidden: .constant(false), errorMessage: .constant(""))
  }
}
#endif
