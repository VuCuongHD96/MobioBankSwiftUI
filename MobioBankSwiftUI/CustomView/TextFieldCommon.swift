//
//  TextFieldCommon.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TextFieldCommon: View {
    
    @State private var value = ""
    let placeHolder: String
    
    var body: some View {
        HStack {
            TextField(placeHolder, text: $value)
                .padding(.leading, 16)
                .padding(.top, 13)
                .padding(.bottom, 13)
                .padding(.trailing, 16)
                .keyboardType(.numberPad)
        }
        .border(Color(#colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)), width: 1)
        .cornerRadius(8)
    }
}

struct TextFieldCommon_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCommon(placeHolder: "Nhập số tài khoản")
    }
}
