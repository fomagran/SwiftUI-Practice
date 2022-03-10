//
//  HelloView.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/03.
//

import SwiftUI

struct HelloView: View {
    @Binding var goIndex:Int
    var body: some View {
        Button("Go Login") {
            self.goIndex = 0
        }
    }
}
