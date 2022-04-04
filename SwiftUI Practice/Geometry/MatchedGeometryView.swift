//
//  GeometryView.swift
//  SwiftUI Practice
//
//  Created by Fomagran on 2022/03/27.
//

import SwiftUI

struct MatchedGeometryView: View {
    
    @State var detailShow:Bool = false
    @Namespace var animation
    
    var body: some View {
        VStack {
            if detailShow {
                DetailView()
            }else {
                Image("Highest in the room")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 15,style: .continuous))
                    .matchedGeometryEffect(id: "image", in:animation)
                    .frame(width: 150, height: 150)
            }
        }
        .onTapGesture {
            withAnimation {
                detailShow = true
            }
        }
    }
    
    @ViewBuilder
    func DetailView() -> some View {
        VStack {
            Image("Highest in the room")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 15,style: .continuous))
                .matchedGeometryEffect(id: "image", in:animation)
                .frame(maxWidth: .infinity, maxHeight: 400)
                .overlay {
                    VStack {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top,30)
                            .padding(.leading,20)
                            .opacity(detailShow ? 1 : 0)
                            .onTapGesture {
                                withAnimation {
                                    detailShow = false
                                }
                            }
                        Spacer()
                    }
                }
            
            Spacer()
        }
        .ignoresSafeArea(.all)
    }
    
    struct MathcedGeometryView_Previews: PreviewProvider {
        static var previews: some View {
            MatchedGeometryView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
