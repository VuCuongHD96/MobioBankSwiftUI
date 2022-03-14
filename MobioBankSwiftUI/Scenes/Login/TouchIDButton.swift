//
//  TouchIDButton.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TouchIDButton: View {
    var body: some View {
        Button(action: {
            print("Touch ID")
        }, label: {
            Image("iconTouchId")
                .resizable()
                .frame(width: 48, height: 48, alignment: .center)
        })
    }
}

struct touchIDButton_Previews: PreviewProvider {
    static var previews: some View {
        TouchIDButton()
    }
}
