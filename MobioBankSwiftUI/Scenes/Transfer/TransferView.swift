//
//  TransferView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TransferView: View, Identifiable {
    var id = UUID()
    let accountInternalArray = [
        AccountInternal(name: "NGUYEN THU PHU..."),
        AccountInternal(name: "NGUYEN THI TRANG"),
        AccountInternal(name: "VU THI THANH NGA"),
        AccountInternal(name: "VU MINH TIEN"),
    ]
    let accountExternalArray = [
        AccountExternal(imageText: "tp", name: "TRAN THAO TR..."),
        AccountExternal(imageText: "tech", name: "NGUYEN THI HAN"),
        AccountExternal(imageText: "vietcom", name: "PHAM NGOC TH..."),
        AccountExternal(imageText: "vib", name: "NGUYEN MINH TU"),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationView(title: "Chuyển tiền")
            VStack(spacing: 0) {
                HStack {
                    VStack {
                        Image("mobio transfer")
                        Text("Trong hệ thống")
                    }
                    .frame(maxWidth: .infinity)
                    VStack {
                        Image("bank transfer")
                        Text("Ngoài hệ thống")
                    }
                    .frame(maxWidth: .infinity)
                    VStack {
                        Image("invest")
                        Text("Đầu tư")
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding(.top, 36)
                HStack {
                    Text("TÀI KHOẢN TRONG HỆ THỐNG")
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.7)))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Button(action: {}) {
                        Text("Tất cả(15)")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.top, 41)
                HStack {
                    ForEach(accountInternalArray, id: \.self) { item in
                        AccountInternalView(accountInternal: item)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 16)
                HStack {
                    Text("TÀI KHOẢN NGOÀI HỆ THỐNG")
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.7)))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Button(action: {}) {
                        Text("Tất cả(32)")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.top, 41)
                HStack(spacing: 10) {
                    ForEach(accountExternalArray, id: \.self) { item in
                        AccountExternalView(accountExternal: item)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 16)
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
        .ignoresSafeArea()
    }
}

struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}
