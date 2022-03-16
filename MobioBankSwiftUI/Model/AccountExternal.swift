//
//  AccountExternal.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import Foundation

struct AccountExternal {
    let imageText: String
    let name: String
}

extension AccountExternal {
    
    static var example: AccountExternal {
        return AccountExternal(imageText: "vib", name: "NGUYEN MINH TU")
    }
}

extension AccountExternal: Hashable { }
