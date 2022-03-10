//
//  TabViewTest.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/03.
//

import SwiftUI

struct TabViewTest: View {
    
    @State var index = 0
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }

    var body: some View {
        let selection = Binding<Int>(
                    get: { self.index },
                    set: { self.index = $0
                        print($0)
                })
        
        TabView(selection:selection) {
            LoginView(goIndex:$index)
                .tabItem({
                    Image(systemName: "arrow.right.circle.fill")
                    Text("Login")
                }).tag(0)
            HelloView(goIndex:$index)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Hello")
                }.tag(1)
            SettingView(goIndex:$index)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Setting")
                }.tag(2)
        }
        .foregroundColor(.white)
        .accentColor(.purple)
        .onAppear {
            UITabBar.appearance().backgroundColor = .black
        }
    }
}

struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest()
            .previewDevice("iPhone 13 Pro")
    }
}
