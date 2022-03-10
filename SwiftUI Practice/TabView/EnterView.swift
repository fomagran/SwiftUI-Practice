//
//  EnterView.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/09.
//

import SwiftUI

struct EnterView: View {
    var body: some View {
        NavigationView {
            VStack(spacing:30) {
                    NavigationLink(destination: TabViewTest()) {
                        Text("Go LoginView")
                    }
                
                    NavigationLink(destination: TabViewTest()) {
                        Text("Go HelloView")
                    }
            }
        }
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterView()
    }
}
