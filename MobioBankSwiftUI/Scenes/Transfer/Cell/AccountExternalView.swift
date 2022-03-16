//
//  AccountExternalView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct AccountExternalView: View {
    
    let accountExternal: AccountExternal
    
    var body: some View {
        VStack(spacing: 8) {
            Image(accountExternal.imageText)
            Text(accountExternal.name)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity)
    }
}

struct AccountExternalView_Previews: PreviewProvider {
    static var previews: some View {
        AccountExternalView(accountExternal: .example)
    }
}
