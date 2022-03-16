//
//  LoginButtonView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 15/03/2022.
//

import SwiftUI

struct LoginButtonView: View {
    
    typealias ActionHandler = () -> Void
    
    let topColor = Color(#colorLiteral(red: 0, green: 0.5333333333, blue: 0.8588235294, alpha: 1))
    let bottomColor = Color(#colorLiteral(red: 0.007843137255, green: 0.7215686275, blue: 0.9137254902, alpha: 1))
    let action: ActionHandler
    
    var body: some View {
        
        Button(action: action) {
            Text("Đăng nhập")
                .foregroundColor(.white)
                .bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                           startPoint: .top, endPoint: .bottom)
        )
        .frame(height: 48, alignment: .center)
        .cornerRadius(8)
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    
    private static func showData() {
        print("some thing")
    }
    
    static var previews: some View {
        LoginButtonView(action: LoginButtonView_Previews.showData)
            .frame(width: Screen.width, height: Screen.height, alignment: .center)
            .background(Color.green)
            .ignoresSafeArea()
    }
}
