//
//  LanguageView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 14/03/2022.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        
        HStack(spacing: 8) {
            Image("iconLanguage")
                .resizable()
                .frame(width: 24, height: 24)
            Text("Tiếng Việt")
                .foregroundColor(.white)
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
            .background(Color.green)
    }
}
