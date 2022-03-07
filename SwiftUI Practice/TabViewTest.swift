//
//  TabViewTest.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/03.
//

import SwiftUI

struct TabViewTest: View {
    @State private var index = 0
    
    var body: some View {
        TabView(selection:$index) {
            LoginView()
                .onTapGesture {
                    index = 0
                }
                .tabItem({
                    Image(systemName: "arrow.right.circle.fill")
                    Text("Login")
                })
            HelloView()
                .onTapGesture {
                    index = 1
                }
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Hello")
                }
            SettingView()
                .onTapGesture {
                    index = 2
                }
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
