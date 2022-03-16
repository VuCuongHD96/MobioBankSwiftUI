//
//  NavigationView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct NavigationView: View {
    let title: String
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Image("iconBack")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24, alignment: .center)
                    .padding(.leading, 15)
                    
                Spacer()
                Text(title)
                    .foregroundColor(Color.black)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                Spacer()
                Image("iconBack")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24, alignment: .center)
                    .padding(.leading, 15)
                    .hidden()
            }
            .padding(.bottom, 10)
        }
        .frame(width:Screen.width, height: 88)
        .clipShape(Rectangle())
        .overlay(
            Rectangle().stroke(Color.gray, lineWidth: 0.5)
        )
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(title: "Xác nhận chuyển tiền")
    }
}
