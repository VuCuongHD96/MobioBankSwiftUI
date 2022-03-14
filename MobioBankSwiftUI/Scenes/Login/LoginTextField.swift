//
//  LoginTextField.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 15/03/2022.
//

import SwiftUI

struct LoginTextField: View {
    
    @State private var value = ""
    let textFieldColor = Color(#colorLiteral(red: 0, green: 0.5333333333, blue: 0.8588235294, alpha: 0.5))
    let placeHolderText: String
    
    var body: some View {
        HStack {
            TextField("This is place holder", text: $value)
                .padding(.leading, 16)
                .padding(.top, 13)
                .padding(.bottom, 13)
                .padding(.trailing, 16)
        }
        .background(textFieldColor)
        .border(Color.white, width: 1)
        .cornerRadius(8)
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LoginTextField(placeHolderText: "Email/ Số điện thoại")
            LoginTextField(placeHolderText: "Mật khẩu")
        }
        .frame(width: Screen.width, height: Screen.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.green)
        .ignoresSafeArea()
        
    }
}
