//
//  BalanceView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 17/03/2022.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Số dư tài khoản")
                .padding(.leading, 16)
                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.5)))
                .font(.system(size: 13))
                .padding(.top, 16)
            Text("0111666888")
                .fontWeight(.regular)
                .font(.system(size: 13))
                .padding(.leading, 16)
                .padding(.top, 4)
            HStack {
                Text("30.000.000 VND")
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5333333333, blue: 0.8588235294, alpha: 1)))
                    .padding(.leading, 16)
                    .font(.system(size: 24))
                Button(action: {
                    print("hide money")
                }) {
                    Image("hide_gray")
                }
                Spacer()
            }
            .padding(.top, 12)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: .gray, radius: 3, x: 0, y: 1)
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .padding(.leading, 10)
            .padding(.trailing, 10)
    }
}
