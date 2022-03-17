//
//  Menu.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 17/03/2022.
//

import Foundation

struct Menu: Identifiable {
    
    let id = UUID()
    let imageText: String
    let name: String
}

extension Menu {
    
    static var example: Menu {
        return Menu(imageText: "card", name: "Nạp thẻ")
    }
}
