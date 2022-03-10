//
//  ContentView.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2021/11/07.
//

import SwiftUI

struct ContentView: View {
    @State private var isEnabled:Bool = false
    
    var body: some View {
        EnterView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
