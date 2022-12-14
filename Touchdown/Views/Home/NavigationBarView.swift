//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Smetana, Ryan on 12/13/22.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    
    
    // MARK: - Body
    var body: some View {
        HStack {
            // MARK: - Search Button
            Button {
                //Something
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } //: Button

            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            // MARK: - Cart Button
            Button {
                //Something
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } //: ZStack
            } //: Button
        } //: HStack
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
