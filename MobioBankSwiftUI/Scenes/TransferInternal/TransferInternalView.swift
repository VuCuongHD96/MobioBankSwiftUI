//
//  TransferInternalView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TransferInternalView: View {
    var body: some View {
        VStack(spacing: 0) {
            NavigationView(title: "Chuyển tiền trong Mobio")
            HStack { }
            .frame(maxWidth: .infinity, maxHeight: 16, alignment: .center)
            .background(Color(#colorLiteral(red: 0, green: 0.5333333333, blue: 0.8588235294, alpha: 0.02)))
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct TransferInternalView_Previews: PreviewProvider {
    static var previews: some View {
        TransferInternalView()
    }
}
