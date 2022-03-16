//
//  AccountInternal.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import Foundation

struct AccountInternal {
    
    let imageText = "mobio avatar"
    let name: String
}

extension AccountInternal {
    
    static var example: AccountInternal {
        return AccountInternal(name: "VU MINH TIEN")
    }
}

extension AccountInternal: Hashable { }
