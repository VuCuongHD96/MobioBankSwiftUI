//
//  TabbarView.swift
//  MobioBankSwiftUI
//
//  Created by Sun on 17/03/2022.
//

import SwiftUI

struct TabbarView: View {
    
    @StateObject var viewModel = TabbarViewModel()
    let itemTabViewArray = [TransferView(), TransferView()]
    
    var body: some View {
        VStack {
            TabView(selection: $viewModel.selectedIndex) {
                ForEach(itemTabViewArray.indices) { index in
                    let item = itemTabViewArray[index]
                    item.tabItem {
                        Image(viewModel.imageArray[index])
                    }
                    .tag(index)
                }
//                HomeView()
//                    .tabItem {
//                        Image(viewModel.imageArray[0])
//                    }
//                    .tag(0)
//                Text("Another Tab")
//                    .tabItem {
//                        Image(viewModel.imageArray[1])
//                    }
//                    .tag(1)
//                Text("The Last Tab")
//                    .tabItem {
//                        Image(viewModel.imageArray[2])
//                    }
//                    .tag(2)
            }
            .foregroundColor(.blue)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}

struct TabViewImage {
    
    var active: String
    var notActive: String
}


class TabbarViewModel: ObservableObject {
    
    var selectedIndex = 0 {
        didSet {
            getImageNameArray()
        }
    }
    @Published var imageArray = [String]()
    
    init() {
        getImageNameArray()
    }
    
    let tabViewImageArray = [
        TabViewImage(active: "home_active", notActive: "home_unactive"),
        TabViewImage(active: "transaction_active", notActive: "transaction_unactive"),
        TabViewImage(active: "notification_active", notActive: "notification_unactive"),
    ]
    
    private func getImageNameArray()  {
        let tabViewImage = tabViewImageArray[selectedIndex]
        imageArray = tabViewImageArray.map { tabViewImage -> String in
            tabViewImage.notActive
        }
        imageArray[selectedIndex] = tabViewImage.active
    }
}
