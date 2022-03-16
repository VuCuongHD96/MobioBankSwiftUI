//
//  AccountInternalView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct AccountInternalView: View {
    
    let accountInternal: AccountInternal
    
    var body: some View {
        VStack(spacing: 8) {
            Image(accountInternal.imageText)
            Text(accountInternal.name)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity)
    }
}

struct AccountInternalView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInternalView(accountInternal: .example)
    }
}
