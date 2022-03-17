//
//  HomeView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 17/03/2022.
//

import SwiftUI

struct HomeView: View, Identifiable {
    var id = UUID()
    
    
    let columns = Array(repeating: GridItem(.flexible()), count: 3)
    let menuArray = [
        Menu(imageText: "my card", name: "Tài khoản"),
        Menu(imageText: "send", name: "Chuyển tiền"),
        Menu(imageText: "payment", name: "Thanh toán"),
        Menu(imageText: "receive", name: "Nạp tiền"),
        Menu(imageText: "save", name: "Tiết kiệm"),
        Menu(imageText: "card", name: "Thẻ"),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image("background_home")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 188)
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Image("avatar")
                            .resizable()
                            .frame(maxWidth: 48, maxHeight: 48)
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Xin chào,")
                                .foregroundColor(.white)
                                .fontWeight(.regular)
                                .font(.system(size: 13))
                            Text("Vũ Cương")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                                .padding(.top, 4)
                        }
                        .padding(.leading, 16)
                        Spacer()
                    }
                }
                .padding(.leading, 16)
                .padding(.trailing, 16)
            }
            VStack(spacing: 0) {
                BalanceView()
                    .padding(.top, -50)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                LazyVGrid(columns: columns) {
                    ForEach(menuArray) { item in
                        MenuView(menu: item)
                    }
                }
                .padding(.top, 32)
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
