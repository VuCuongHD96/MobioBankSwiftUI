//
//  TitleTextView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TitleTextView: View {
    
    let textString: String
    
    var body: some View {
        
        Text(textString)
            .font(.custom("SFProText-Regular", size: 14))
            .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.7)))
    }
}

struct TitleTextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleTextView(textString: "Tài khoản nguồn")
            TitleTextView(textString: "Tài khoản nguồn")
        }
    }
}
