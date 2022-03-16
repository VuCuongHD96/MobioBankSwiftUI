//
//  ResultTextView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct ResultTextView: View {
    let textString: String
    var body: some View {
        Text(textString)
            .font(.system(size: 14))
            .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
            .bold()
            .frame(maxWidth: 188, alignment: .trailing)
            .multilineTextAlignment(.trailing)
    }
}

struct ResultTextView_Previews: PreviewProvider {
    static var previews: some View {
        ResultTextView(textString: "Ha Nguyen chuyen tien cho nguoi anh em thien lanh đâsdd")
    }
}
