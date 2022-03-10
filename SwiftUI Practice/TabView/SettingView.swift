//
//  SettingView.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/03.
//

import SwiftUI

struct SettingView: View {
    @Binding var goIndex:Int
    var body: some View {
        Button("Go Hello") {
            self.goIndex = 1
        }
    }
}
