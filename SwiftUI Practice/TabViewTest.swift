//
//  TabViewTest.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/03.
//

import SwiftUI

struct TabViewTest: View {
    var body: some View {
        TabView {
            LoginView()
                .tabItem({
                    Image(systemName: "arrow.right.circle.fill")
                    Text("Login")
                })
            HelloView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Hello")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Setting")
                }
        }
        
    }
}

struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest()
            .previewDevice("iPhone 13 Pro")
    }
}
