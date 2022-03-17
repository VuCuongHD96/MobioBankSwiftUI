//
//  MenuView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 17/03/2022.
//

import SwiftUI

struct MenuView: View {
    
    let menu: Menu
    
    var body: some View {
        VStack {
            Image(menu.imageText)
                .frame(width: 32, height: 32, alignment: .center)
            Text(menu.name)
                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                .fontWeight(.regular)
        }
        .frame(width: 93, height: 93, alignment: .center)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menu: .example)
    }
}
