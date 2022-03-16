//
//  LoginView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 14/03/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
            VStack(spacing: 0) {
                LanguageView()
                    .padding(.top, 76)
                    .padding(.trailing, 16)
                    .frame(width: Screen.width, alignment: .trailing)
                Image("logo")
                    .padding(.top, 47)
                LoginTextField(placeHolderText: "Email/ Số điện thoại")
                    .padding(.top, 56)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                LoginTextField(placeHolderText: "Mật khẩu")
                    .padding(.top, 16)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                LoginButtonView(action: loginButtonAction)
                    .padding(.top, 35)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                TouchIDButton()
                    .padding(.top, 24)
                Spacer()
            }
            .frame(width: Screen.width, alignment: .center)
        }
        .ignoresSafeArea()
    }
    
    private func loginButtonAction() {
        print("button login did tap")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
