//
//  GeometryReaderView.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/04/03.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack {
            HStack {
                GeometryReader { proxy in
                    GeometryReaderDetailView()
                        .onAppear {
                            print(proxy.safeAreaInsets)
                        }
                }
            }
        }
        .ignoresSafeArea(.all)
        
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
