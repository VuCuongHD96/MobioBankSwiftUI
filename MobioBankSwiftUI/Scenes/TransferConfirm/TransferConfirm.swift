//
//  TransferConfirm.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TransferConfirm: View {
    var body: some View {
        VStack(spacing: 0) {
            NavigationView(title: "Xác nhận chuyển tiền")
            HStack {
                Text("Quý khách vui lòng kiểm tra thông tin giao dịch vừa khởi tạo")
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.5)))
            }
            .frame(maxWidth: .infinity, maxHeight: 68, alignment: .center)
            .background(Color(#colorLiteral(red: 0, green: 0.5333333333, blue: 0.8588235294, alpha: 0.02)))
            VStack(spacing: 16) {
                HStack {
                    TitleTextView(textString: "Tài khoản nguồn")
                    Spacer()
                    ResultTextView(textString: "0111688898")
                }
                .frame(maxWidth: .infinity)
                HStack {
                    TitleTextView(textString: "Tài khoản nhận")
                    Spacer()
                    ResultTextView(textString: "0111579219")
                }
                .frame(maxWidth: .infinity)
                HStack {
                    TitleTextView(textString: "Chủ tài khoản nhận")
                    Spacer()
                    ResultTextView(textString: "Trinh Kim Ngan")
                }
                HStack {
                    TitleTextView(textString: "Số tiền")
                    Spacer()
                    ResultTextView(textString: "5.020.000 VND")
                }
                .frame(maxWidth: .infinity)
                HStack {
                    TitleTextView(textString: "Phí giao dịch")
                    Spacer()
                    ResultTextView(textString: "0 VND")
                }
                .frame(maxWidth: .infinity)
                HStack(alignment: .top) {
                    TitleTextView(textString: "Nội dung")
                    Spacer()
                    ResultTextView(textString: "Ha Nguyen chuyen tien cho nguoi anh em thien lanh")
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .padding(.top, 24)
            LoginButtonView(action: buttonAction)
                .padding(.top, 72)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .ignoresSafeArea()
    }
    
    private func buttonAction() {
        print("Button did tap")
    }
}

struct TransferConfirm_Previews: PreviewProvider {
    static var previews: some View {
        TransferConfirm()
    }
}
