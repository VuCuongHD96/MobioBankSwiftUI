//
//  TransferSuccessView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 16/03/2022.
//

import SwiftUI

struct TransferSuccessView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            Image("done")
                .padding(.top, 113)
            Text("Chuyển tiền thành công")
                .padding(.top, 20)
                .font(.custom("SFProText-Regular", size: 16))
            Text("5.020.000 VND")
                .font(.custom("SFProText-Bold", size: 24))
                .padding(.top, 8)
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
                    ResultTextView(textString: "Chủ tài khoản nhận")
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
                HStack {
                    TitleTextView(textString: "Thời gian giao dịch")
                    Spacer()
                    ResultTextView(textString: "12/10/2021 15:30")
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
        .frame(width: Screen.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea()
    }
    
    private func buttonAction() {
        print("Button did tap")
    }
}

struct TransferSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        TransferSuccessView()
    }
}
